package com.service;
import java.math.BigDecimal;
import java.math.RoundingMode;

import org.springframework.stereotype.Service;

import com.bean.PaymentsBean;

import net.authorize.Environment;
import net.authorize.api.contract.v1.ANetApiResponse;
import net.authorize.api.contract.v1.CreateTransactionRequest;
import net.authorize.api.contract.v1.CreateTransactionResponse;
import net.authorize.api.contract.v1.CreditCardType;
import net.authorize.api.contract.v1.CustomerDataType;
import net.authorize.api.contract.v1.MerchantAuthenticationType;
import net.authorize.api.contract.v1.MessageTypeEnum;
import net.authorize.api.contract.v1.PaymentType;
import net.authorize.api.contract.v1.TransactionRequestType;
import net.authorize.api.contract.v1.TransactionResponse;
import net.authorize.api.contract.v1.TransactionTypeEnum;
import net.authorize.api.controller.CreateTransactionController;
import net.authorize.api.controller.base.ApiOperationBase;

@Service
public class PaymentService{

	public PaymentsBean run(PaymentsBean paymentBean) {
		String apiLoginId = "5LUg3rQ65cUq";
		String transactionKey = "82aS9dx74EF4wQ8U";
		double amount = Double.parseDouble(paymentBean.getAmounts());
		System.out.println("================");
		// Set the request to operate in either the sandbox or production environment
		ApiOperationBase.setEnvironment(Environment.SANDBOX);
		System.out.println("================");

		// Create object with merchant authentication details
		MerchantAuthenticationType merchantAuthenticationType = new MerchantAuthenticationType();
		merchantAuthenticationType.setName(apiLoginId);
		merchantAuthenticationType.setTransactionKey(transactionKey);
		System.out.println("================");

		// Populate the payment data
		PaymentType paymentType = new PaymentType();
		CreditCardType creditCard = new CreditCardType();
//		creditCard.setCardNumber("4242424242424242");
		creditCard.setCardNumber(paymentBean.getCardNo());
//		creditCard.setExpirationDate("0835");
		creditCard.setExpirationDate(paymentBean.getExpiryDate());
		paymentType.setCreditCard(creditCard);
		System.out.println("================");

		// Set email address (optional)
		CustomerDataType customer = new CustomerDataType();
		customer.setEmail("thakkarrutvi2002@gmail.com");
		System.out.println("================");

		// Create the payment transaction object
		TransactionRequestType txnRequest = new TransactionRequestType();
		txnRequest.setTransactionType(TransactionTypeEnum.AUTH_CAPTURE_TRANSACTION.value());
		txnRequest.setPayment(paymentType);
		txnRequest.setCustomer(customer);
		txnRequest.setAmount(new BigDecimal(amount).setScale(2, RoundingMode.CEILING));
		System.out.println("================");

		// Create the API request and set the parameters for this specific request
		CreateTransactionRequest apiRequest = new CreateTransactionRequest();
		apiRequest.setMerchantAuthentication(merchantAuthenticationType);
		apiRequest.setTransactionRequest(txnRequest);
		System.out.println("================7");

		// Call the controller
		CreateTransactionController controller = new CreateTransactionController(apiRequest);
		controller.execute();
		System.out.println(";=========sdsds=d=================");
		// Get the response
		CreateTransactionResponse response = new CreateTransactionResponse();
		response = controller.getApiResponse();
		System.out.println("================end====");

		// Parse the response to determine results
		if (response != null) {
			// If API Response is OK, go ahead and check the transaction response
			if (response.getMessages().getResultCode() == MessageTypeEnum.OK) {
				TransactionResponse result = response.getTransactionResponse();
				if (result.getMessages() != null) {
					System.out.println("Successfully created transaction with Transaction ID: " + result.getTransId());
					System.out.println("Response Code: " + result.getResponseCode());
					System.out.println("Message Code: " + result.getMessages().getMessage().get(0).getCode());
					System.out.println("Description: " + result.getMessages().getMessage().get(0).getDescription());
					System.out.println("Auth Code: " + result.getAuthCode());
					paymentBean.setPaymentStatus("success");
					paymentBean.setPaymentStatusCode(result.getAuthCode());
					//
				} else {
					System.out.println("Failed Transaction.");
					if (response.getTransactionResponse().getErrors() != null) {
						System.out.println("Error Code: "
								+ response.getTransactionResponse().getErrors().getError().get(0).getErrorCode());
						System.out.println("Error message: "
								+ response.getTransactionResponse().getErrors().getError().get(0).getErrorText());
						paymentBean.setPaymentStatus("fail");
						paymentBean.setPaymentStatusCode(
								response.getTransactionResponse().getErrors().getError().get(0).getErrorText());
					}
				}
			} else {
				System.out.println("Failed Transaction.");
				if (response.getTransactionResponse() != null
						&& response.getTransactionResponse().getErrors() != null) {
					System.out.println("Error Code: "
							+ response.getTransactionResponse().getErrors().getError().get(0).getErrorCode());
					System.out.println("Error message: "
							+ response.getTransactionResponse().getErrors().getError().get(0).getErrorText());
					paymentBean.setPaymentStatus("fail");
					paymentBean.setPaymentStatusCode(
							response.getTransactionResponse().getErrors().getError().get(0).getErrorText());

				} else {
					System.out.println("Error Code: " + response.getMessages().getMessage().get(0).getCode());
					System.out.println("Error message: " + response.getMessages().getMessage().get(0).getText());
					paymentBean.setPaymentStatus("fail");
					paymentBean.setPaymentStatusCode(response.getMessages().getMessage().get(0).getText());
				}
			}
		} else {
			// Display the error code and message when response is null
			ANetApiResponse errorResponse = controller.getErrorResponse();
			System.out.println("Failed to get response");
			if (!errorResponse.getMessages().getMessage().isEmpty()) {
				System.out.println("Error: " + errorResponse.getMessages().getMessage().get(0).getCode() + " \n"
						+ errorResponse.getMessages().getMessage().get(0).getText());
				paymentBean.setPaymentStatus("fail");
				paymentBean.setPaymentStatusCode(errorResponse.getMessages().getMessage().get(0).getText());
			}
		}

		return paymentBean;
	}
	
	
}
