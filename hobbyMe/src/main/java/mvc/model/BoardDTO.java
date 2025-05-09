package mvc.model;

public class BoardDTO {
	private int post_num; // 게시글 번호
	private String user_id; // 사용자 아이디
	private String title; // 제목
	private String content; // 내용
	private String category; // 카테고리
	private String tag; // 태그
	private String created_date; // 작성일 (String으로 수정)
	private String reservation_date; // 예약일 (String으로 수정)
	private String end_date; // 시작일 (String으로 수정)
	private String location; // 위치
	private int people; // 인원
	private int price; // 가격
	private String thumbnail; // 썸네일 (int로 수정)
	private String images; // 이미지
	private String deleted; // 삭제 여부 (String으로 수정)
	
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getCreated_date() {
		return created_date;
	}
	public void setCreated_date(String created_date) {
		this.created_date = created_date;
	}
	public String getReservation_date() {
		return reservation_date;
	}
	public void setReservation_date(String reservation_date) {
		this.reservation_date = reservation_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getPeople() {
		return people;
	}
	public void setPeople(int people) {
		this.people = people;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getDeleted() {
		return deleted;
	}
	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}
	

}
