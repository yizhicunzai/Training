package entity;

public class Subscribe {
	private int subscribe_no;
	private User user;
	private Car car;
	private String telephone;
	private String car_model;
	private String user_name;
	private String subscribe_tame;
	public int getSubscribe_no() {
		return subscribe_no;
	}
	public String getCar_model() {
		return car_model;
	}
	public void setCar_model(String car_model) {
		this.car_model = car_model;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public void setSubscribe_no(int subscribe_no) {
		this.subscribe_no = subscribe_no;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getSubscribe_tame() {
		return subscribe_tame;
	}
	public void setSubscribe_tame(String subscribe_tame) {
		this.subscribe_tame = subscribe_tame;
	}
}
