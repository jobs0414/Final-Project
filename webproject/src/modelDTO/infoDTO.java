package modelDTO;

public class infoDTO {
	String speaker_name;
	String speaker_occupation;
	String photo;
	String title;
	long views;
	String url;
	String web_site;
	
	public infoDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public infoDTO(String speaker_name, String speaker_occupation, String photo, String title, long views, String url,
			String web_site) {
		super();
		this.speaker_name = speaker_name;
		this.speaker_occupation = speaker_occupation;
		this.photo = photo;
		this.title = title;
		this.views = views;
		this.url = url;
		this.web_site = web_site;
	}

	/**
	 * @return the speaker_name
	 */
	public String getSpeaker_name() {
		return speaker_name;
	}

	/**
	 * @param speaker_name the speaker_name to set
	 */
	public void setSpeaker_name(String speaker_name) {
		this.speaker_name = speaker_name;
	}

	/**
	 * @return the speaker_occupation
	 */
	public String getSpeaker_occupation() {
		return speaker_occupation;
	}

	/**
	 * @param speaker_occupation the speaker_occupation to set
	 */
	public void setSpeaker_occupation(String speaker_occupation) {
		this.speaker_occupation = speaker_occupation;
	}

	/**
	 * @return the photo
	 */
	public String getPhoto() {
		return photo;
	}

	/**
	 * @param photo the photo to set
	 */
	public void setPhoto(String photo) {
		this.photo = photo;
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the views
	 */
	public long getViews() {
		return views;
	}

	/**
	 * @param views the views to set
	 */
	public void setViews(long views) {
		this.views = views;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the web_site
	 */
	public String getWeb_site() {
		return web_site;
	}

	/**
	 * @param web_site the web_site to set
	 */
	public void setWeb_site(String web_site) {
		this.web_site = web_site;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("infoDTO [speaker_name=");
		builder.append(speaker_name);
		builder.append(", speaker_occupation=");
		builder.append(speaker_occupation);
		builder.append(", photo=");
		builder.append(photo);
		builder.append(", title=");
		builder.append(title);
		builder.append(", views=");
		builder.append(views);
		builder.append(", url=");
		builder.append(url);
		builder.append(", web_site=");
		builder.append(web_site);
		builder.append("]");
		return builder.toString();
	}

	
}