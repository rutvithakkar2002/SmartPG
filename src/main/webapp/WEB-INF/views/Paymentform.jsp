<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Form</title>

<style type="text/css">
* {
	padding: 0;
	margin: 0
}

body {
	background-color: #f8f8f8;
	display: flex;
	justify-content: center;
	align-items: center
}

.container {
	display: flex;
	height: 100vh;
	justify-content: center;
	align-items: center
}

.wrapper {
	width: 350px;
	height: 350px;
	position: relative;
	border-radius: 10px
}

.outer-card {
	width: 100%;
	height: 100%;
	background-color: #fff;
	border-radius: 10px
}

input, input::-webkit-input-placeholder {
	font-size: 16px;
	line-height: 3
}

.wrapper .card::after {
	position: absolute;
	content: "";
	width: 200px;
	height: 200px;
	background-color: #3641d3;
	right: -30px;
	top: -30px;
	border-radius: 50%;
	opacity: 0.7
}

.wrapper .card::before {
	position: absolute;
	content: "";
	width: 300px;
	height: 300px;
	background-color: #3641d3;
	left: -70px;
	top: -70px;
	border-radius: 50%;
	opacity: 0.4
}

.wrapper .forms {
	padding-top: 30px;
	padding-left: 20px;
	padding-right: 20px
}

.wrapper .forms input {
	height: 40px;
	width: 100%;
	font-size: 18px;
	border: 2px solid #eee;
	border-radius: 4px;
	text-indent: 10px;
	margin-top: 4px
}

.wrapper .forms input:focus {
	outline: none
}

.input-items span {
	font-size: 14px;
	margin-left: 2px
}

.input-items {
	margin-bottom: 10px
}

.one-line {
	display: flex;
	flex-direction: row
}

.one-line .input-items:nth-child(1) {
	margin-right: 10px
}

.input-buttons {
	width: 100%;
	margin-top: 10px
}

.input-buttons a {
	width: 100%;
	height: 45px;
	border-radius: 5px;
	color: #fff;
	background-color: #000;
	text-decoration: none;
	display: flex;
	justify-content: center;
	align-items: center
}
</style>

</head>
<body>
	<form method="post" action="charge">
		<div class="container">
			<div class="wrapper">
				<div class="outer-card">
					<div class="forms">


						<div class="input-items">
							<span>Amount</span> <input type="text" name="amounts"
								value="1200">
						</div>
						<div class="input-items">
							<span>Card Number</span> <input type="text" name="cardNo">
						</div>
						<div class="input-items">
							<span>Name on card</span> <input placeholder="Samuel Iscon"
								name="nameonCard">
						</div>
						<div class="one-line">
							<div class="input-items">
								<span>Expiry Date</span> <input placeholder="mm/yyyy"
									name="expiryDate" data-slots="my">
							</div>
							<div class="input-items">
								<span>CVV</span> <input placeholder="..." data-slots="."
									name="cvv" data-accept="\d" size="3">
							</div>
						</div>


						<input type="submit" value="Pay">
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
document.addEventListener('DOMContentLoaded', () => {
    for (const el of document.querySelectorAll("[placeholder][data-slots]")) {
        const pattern = el.getAttribute("placeholder"),
            slots = new Set(el.dataset.slots || "_"),
            prev = (j => Array.from(pattern, (c,i) => slots.has(c)? j=i+1: j))(0),
            first = [...pattern].findIndex(c => slots.has(c)),
            accept = new RegExp(el.dataset.accept || "\\d", "g"),
            clean = input => {
                input = input.match(accept) || [];
                return Array.from(pattern, c =>
                    input[0] === c || slots.has(c) ? input.shift() || c : c
                );
            },
            format = () => {
                const [i, j] = [el.selectionStart, el.selectionEnd].map(i => {
                    i = clean(el.value.slice(0, i)).findIndex(c => slots.has(c));
                    return i<0? prev[prev.length-1]: back? prev[i-1] || first: i;
                });
                el.value = clean(el.value).join``;
                el.setSelectionRange(i, j);
                back = false;
            };
        let back = false;
        el.addEventListener("keydown", (e) => back = e.key === "Backspace");
        el.addEventListener("input", format);
        el.addEventListener("focus", format);
        el.addEventListener("blur", () => el.value === pattern && (el.value=""));
    }
});

</script>

</body>
</html>