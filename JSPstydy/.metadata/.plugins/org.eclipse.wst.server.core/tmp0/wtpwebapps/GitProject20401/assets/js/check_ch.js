function validateForm() {
	var chDate = document.getElementById("exampleInputDate").value;
	var weight = document.getElementById("exampleInputConfirmPassword2").value;

	if (chDate === "" || weight === "") {
		alert("날짜와 체중을 입력해주세요.");
		return false;
	}
	return true;
}