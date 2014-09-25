package com.vilt.tvshows.service;

import java.util.List;

import com.vilt.tvshows.model.Player;

public interface PlayerService {

	public List<Player> getAll();

	public void addPlayer(Player player);

	public void deletePlayer(int id);

}