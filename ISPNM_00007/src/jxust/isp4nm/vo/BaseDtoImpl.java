package jxust.isp4nm.vo;

import jxust.isp4nm.serviceImpl.ToolsService;

public class BaseDtoImpl implements BaseDto {
	protected String idStr;
	protected String keyWord;
	//
	protected String start;
	protected String length;
	protected String total;
	protected String curPageNum;
	protected String maxPageNum;

	public BaseDtoImpl() {
		this.start = "0";
		this.length = "6";
		this.curPageNum = "1";
	}

	//
	public Object getEntity() {
		return null;
	}

	// method
	public void home() {
		this.start = "0";
		this.curPageNum = "1";
	}

	public void last() {
		this.start = (ToolsService.parseToInt(this.maxPageNum) - 1)
				* ToolsService.parseToInt(this.length) + "";
		this.curPageNum = this.maxPageNum;
	}

	public void next() {
		this.start = ""
				+ (ToolsService.parseToInt(this.start) + ToolsService
						.parseToInt(this.length));
		this.curPageNum = "" + (ToolsService.parseToInt(this.curPageNum) + 1);
		if (ToolsService.parseToInt(this.start) > ToolsService
				.parseToInt(this.total)) {
			this.previous();
		}
	}

	public void previous() {
		this.start = ""
				+ (ToolsService.parseToInt(this.start) - ToolsService
						.parseToInt(this.length));
		this.curPageNum = "" + (ToolsService.parseToInt(this.curPageNum) - 1);
		if (ToolsService.parseToInt(this.start) < 0) {
			this.next();
		}
	}

	// getter and setter...
	public String getIdStr() {
		return idStr;
	}

	public void setIdStr(String idStr) {
		this.idStr = idStr;
	}

	public String getStart() {
		return start;
	}

	public void setStart(String start) {
		this.start = start;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
		this.setMaxPageNum("");
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public String getCurPageNum() {
		return curPageNum;
	}

	public void setCurPageNum(String curPageNum) {
		this.curPageNum = curPageNum;
	}

	public String getMaxPageNum() {
		return maxPageNum;
	}

	public void setMaxPageNum(String maxPageNum) {
		if (maxPageNum != null && !maxPageNum.equals("")) {
			this.maxPageNum = maxPageNum;
			return;
		}
		int length = ToolsService.parseToInt(this.length);
		int total = ToolsService.parseToInt(this.total);
		int maxNum = total / length;
		if (total % length > 0) {
			maxNum++;
		}
		this.maxPageNum = "" + maxNum;
	}

	@Override
	public String toString() {
		return "start: " + start + "\n" + "length: " + length + "\n"
				+ "total: " + total + "\n";
	}

}
