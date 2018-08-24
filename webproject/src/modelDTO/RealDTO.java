package modelDTO;

public class RealDTO {
	String topic;
	int real_no;
	   
	public RealDTO() {}
	public RealDTO(String topic, int real_no) {
		super();
		this.topic =topic;
		this.real_no= real_no;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public int getReal_no() {
		return real_no;
	}
	public void setReal_no(int real_no) {
		this.real_no = real_no;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("realDTO [topic=");
		builder.append(topic);
		builder.append(", real_no=");
		builder.append(real_no);
		builder.append("]");
		return builder.toString();
	}
	
	
	

}
