package com.vilt.tvshows.model;

import java.util.List;

import com.vilt.tvshows.utils.Util;

public class TvShow {

	private String name;
	private List<String> episodes;
	private float classification;
	private String friendlyURL;
	
	public String getFriendlyURL() {
		return friendlyURL;
	}


	public void setFriendlyURL(String friendlyURL) {
		this.friendlyURL = friendlyURL;
	}


	public TvShow(String name, List<String> episodes, float classification) {
		this.name = name;
		this.episodes = episodes;
		this.classification = classification;
		this.friendlyURL = Util.friendlyUrl(name);
	}
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<String> getEpisodes() {
		return episodes;
	}
	public void setEpisodes(List<String> episodes) {
		this.episodes = episodes;
	}
	public float getClassification() {
		return classification;
	}
	public void setClassification(float classification) {
		this.classification = classification;
	}
	
	
	
}
