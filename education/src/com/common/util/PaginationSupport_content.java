package com.common.util;

public class PaginationSupport_content {
	private String content;
	private int totalCount;
	private int pageSize ;

	private int currentPage;

	public PaginationSupport_content(String content, int totalCount, int currentPage,
			int pageSize) {
		setContent(content);
		setTotalCount(totalCount);
		setCurrentPage(currentPage);
		setPageSize(pageSize);
	}
	
	
	public int getNextPage() {
		int nextPage;
		if (currentPage * pageSize < totalCount) {
			nextPage = currentPage + 1;
		} else {
			nextPage = currentPage;
		}
		return nextPage;
	}

	public int getPreviousPage() {
		int previousPage;
		if (currentPage == 1) {
			previousPage = 1;
		} else {
			previousPage = currentPage-1;
		}
		return previousPage;
	}
	
	
	public int getLastPage() {
		int lastPage = 1;
		if (totalCount / pageSize > 0 && totalCount % pageSize == 0) {
			lastPage = totalCount / pageSize;
		} else if (totalCount / pageSize > 0 && totalCount % pageSize > 0) {
			lastPage = (totalCount / pageSize) + 1;
		}
		return lastPage;
	}
	
	public int getTotalPage(){
		return (int)Math.ceil(Double.valueOf(totalCount)/pageSize);
	}
	
	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}
	
	
	
}
