package model;

public class topicDTO {
	private String topic;
	private int count;
	
	public topicDTO() {
		super();
	}

	public topicDTO(String topic, int count) {
		super();
		this.topic = topic;
		this.count = count;
	}

	public String getTopic() {
		return topic;
	}

	public void setTopic(String topic) {
		this.topic = topic;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("topicDTO [topic=");
		builder.append(topic);
		builder.append(", count=");
		builder.append(count);
		builder.append("]");
		return builder.toString();
	}
}
