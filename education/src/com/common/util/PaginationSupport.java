package com.common.util;

import java.util.List;

public class PaginationSupport{
	public final static int PAGESIZE = 10;

	private int pageSize = PAGESIZE;

	private List items;

	private int totalCount;

	private int[] indexes = new int[0];

	private int currentPage;

	public PaginationSupport(List items, int totalCount) {
		setPageSize(PAGESIZE);
		setTotalCount(totalCount);
		setItems(items);
		setCurrentPage(0);
	}

	public PaginationSupport(List dataSource, int totalCount, int currentPage,
			int pageSize) {
		setItems(dataSource);
		setTotalCount(totalCount);
		setCurrentPage(currentPage);
		setPageSize(pageSize);
	}
	

	public PaginationSupport(List items, int totalCount, int currentPage) {
		setPageSize(PAGESIZE);
		setTotalCount(totalCount);
		setItems(items);
		setCurrentPage(currentPage);
	}

	public List getItems() {
		return items;
	}

	public void setItems(List items) {
		this.items = items;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		if (totalCount > 0) {
			this.totalCount = totalCount;
			int count = totalCount / pageSize;
			if (totalCount % pageSize > 0)
				count++;
			indexes = new int[count];
			for (int i = 0; i < count; i++) {
				indexes[i] = pageSize * i;
			}
		} else {
			this.totalCount = 0;
		}
	}

	public int[] getIndexes() {
		return indexes;
	}

	public void setIndexes(int[] indexes) {
		this.indexes = indexes;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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
	
}
