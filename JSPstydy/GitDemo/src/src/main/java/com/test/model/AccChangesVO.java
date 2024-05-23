package com.test.model;

public class AccChangesVO {
	// 변화 식별자
	private int change_idx;
	// 회원 아이디
	private String mem_id;
	// 키
	private int height;
	// 체중
	private int weight;
	// 체질량지수(BMI)
	private int bmi;
	// 근육량
	private int muscle;
	// 체지방률
	private int fat_per;

	private int ex_calories;

	// 기록 날짜
	private String created_at;

	public int getEx_calories() {
		return ex_calories;
	}

	public void setEx_calories(int ex_calories) {
		this.ex_calories = ex_calories;
	}

	public int getChange_idx() {
		return change_idx;
	}

	public void setChange_idx(int change_idx) {
		this.change_idx = change_idx;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getBmi() {
		return bmi;
	}

	public void setBmi(int bmi) {
		this.bmi = bmi;
	}

	public int getMuscle() {
		return muscle;
	}

	public void setMuscle(int muscle) {
		this.muscle = muscle;
	}

	public int getFat_per() {
		return fat_per;
	}

	public void setFat_per(int fat_per) {
		this.fat_per = fat_per;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public AccChangesVO(int change_idx, String mem_id, int height, int weight, int bmi, int muscle, int fat_per, int ex_calories,
			String created_at) {
		this.change_idx = change_idx;
		this.mem_id = mem_id;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.muscle = muscle;
		this.fat_per = fat_per;
		this.ex_calories = ex_calories;
		this.created_at = created_at;
	}

	public AccChangesVO() {
	}
}