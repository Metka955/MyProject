package com.etc.cms.entity;

public class Article {
	
	private int articleId;
	private String title;
	private String content;
	private String pubDate;
	private String authorName;
	private int clickCount;
	
	//文章标签 用空格隔开
	private String tag;
	
	public Article() {
		// TODO Auto-generated constructor stub
	}

	public Article(String title, String content, String pubDate,
			String authorName, int clickCount) {
		super();
		this.title = title;
		this.content = content;
		this.pubDate = pubDate;
		this.authorName = authorName;
		this.clickCount = clickCount;
	}
	

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public int getClickCount() {
		return clickCount;
	}

	public void setClickCount(int clickCount) {
		this.clickCount = clickCount;
	}

	@Override
	public String toString() {
		return "Article [articleId=" + articleId + ", title=" + title
				+ ", content=" + content + ", pubDate=" + pubDate
				+ ", authorName=" + authorName + ", clickCount=" + clickCount
				+ ", tag=" + tag + "]";
	}	
	
}
