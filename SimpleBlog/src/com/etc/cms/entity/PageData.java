package com.etc.cms.entity;


import java.util.List;

/**
 * ��ҳ������
 */
public class PageData {
	
	private List data; // ���ҵ�����

	private Integer total; // ����

	private Integer pageSize;// ÿҳ����

	private Integer page;// ҳ��  ��һҳ.�ڶ�ҳ.����ҳ...
	
	private Integer totalPage;

	public PageData() {
		super();
	}

	public PageData(List data, Integer total, Integer pageSize, Integer page) {
		super();
		this.data = data; 
		this.total = total;
		this.pageSize = pageSize;
		this.page = page;
	}

	public List getData() {
		return data;
	}

	public void setData(List data) {
		this.data = data;
	}

	public Integer getPage() {
		return page; 
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	
	public int getTotalPage() {
		int num = total / pageSize;
		if (total % pageSize != 0)
			num++;
		return num;
	}

	@Override
	public String toString() {
		return "{total:" + total + ",data:" + data + "}";
	}
}