import React, { useState } from 'react'

function PlayerSearch({searchPlayer, setSearchPlayer, setPlayerList, player }) {
    const [players, setPlayers] = useState([])
    
    function handleSearchSubmit(e) {
        e.preventDefault();
        fetch(`/players`)
        .then(res => res.json())
        .then(setPlayerList)
    }

    
    // const playerSearch = players.filter((player) => player.player.last_name.toLowerCase().includes(searchPlayer.toLowerCase()))

    function handlePlayerSearchChange (e) {
        setSearchPlayer(e.target.value);
    }

  return (
    <div>
        <form >
            <input 
                onChange={handlePlayerSearchChange}
                className="PlayerSearch"
                type="text"
                placeholder="Search Player..."
                value={searchPlayer}
            />
            <input type='submit' value='Search' onSubmit={handleSearchSubmit}/>
        </form>
    </div>
  )
}

export default PlayerSearch