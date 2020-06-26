package dto;

public class Comment {
	private int id;
	private int store_id;
	private float rating;
	private String content;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public int getStore_id() {
		return store_id;
	}
	
	public void setStore_id(int store_id) {
		this.store_id = store_id;
	}
	
	public float getRating() {
		return rating;
	}
	
	public void setRating(float rating) {
		this.rating = rating;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
}