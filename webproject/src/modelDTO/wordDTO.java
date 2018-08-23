package modelDTO;

public class wordDTO {
	private String text;
	private int counting;
	
	
	public wordDTO() {
		super();
	}

	public wordDTO(String text, int counting) {
		super();
		this.text = text;
		this.counting = counting;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public int getCounting() {
		return counting;
	}

	public void setCounting(int counting) {
		this.counting = counting;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("wordDTO [text=");
		builder.append(text);
		builder.append(", counting=");
		builder.append(counting);
		builder.append("]");
		return builder.toString();
	}


	

}
