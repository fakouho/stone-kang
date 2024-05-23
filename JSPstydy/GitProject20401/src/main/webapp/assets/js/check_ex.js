function validateForm() {
	var exDate = document.getElementById("exampleInputDate").value;
	var exName = document.getElementById("exampleFormControlSelect1").value;
	var exReps = document.getElementById("exampleInputConfirmPassword2").value;
	var exTime = document.getElementById("exampleInputConfirmPassword2").value;

	if (exDate === "" || exName === "" || exReps === "" || exTime === "") {
		alert("모든 입력란을 채워주세요.");
		return false;
	}
	return true;
}
