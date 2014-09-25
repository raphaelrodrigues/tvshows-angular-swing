package com.vilt.tvshows.model;

import java.util.ArrayList;
import java.util.List;

public class Player {
	
	private int id;
	
	private String name;
	private double points;
	private List<Game> games;
	
	
	public Player(int id, String name){
		id = id;
		name = name;
		points = 0;
		games = new ArrayList<Game>();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPoints() {
		return points;
	}
	public void setPoints(double points) {
		this.points = points;
	}
	public List<Game> getGames() {
		return games;
	}
	public void setGames(List<Game> games) {
		this.games = games;
	}
	
	
}
