package com.test.model;


public class CalendarEventVO {

	private int calIdx;
	private String mem_id;
	private String title;
	private String start;
	private String end;
	private String backgroundColor;

	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public int getCalIdx() {
		return calIdx;
	}

	public void setCalIdx(int calIdx) {
		this.calIdx = calIdx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getEnd() {
		return end;
	}

	public void setEnd(String end) {
		this.end = end;
	}

	public String getBackgroundColor() {
		return backgroundColor;
	}

	public void setBackgroundColor(String backgroundColor) {
		this.backgroundColor = backgroundColor;
	}

	public CalendarEventVO() {
	}

	public CalendarEventVO(int calIdx, String mem_id, String title, String start, String end, String backgroundColor) {
		this.calIdx = calIdx;
		this.mem_id = mem_id;
		this.title = title;
		this.start = start;
		this.end = end;
		this.backgroundColor = backgroundColor;
	}

	public CalendarEventVO(String mem_id, String title, String start, String end, String backgroundColor) {
		this.mem_id = mem_id;
		this.title = title;
		this.start = start;
		this.end = end;
		this.backgroundColor = backgroundColor;
	}

}
