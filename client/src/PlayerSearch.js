import React, { useState } from 'react'

function PlayerSearch({searchPlayer, setSearchPlayer, setPlayerList, player }) {
    const [players, setPlayers] = useState([])
    

    function handlePlayerSearchChange (e) {
        setSearchPlayer(e.target.value);
    }

    function handleSearchSubmit(e) {
        e.preventDefault();
        fetch(`/players`)
        .then(res => res.json())
        .then(setPlayerList)
            setSearchPlayer(player);

    }

    
    const playerSearch = players.filter((player) => player.player.last_name.toLowerCase().includes(searchPlayer.toLowerCase()))

 

  return (
    <div>
        <form >
            <input 
                
                className="PlayerSearch"
                type="text"
                placeholder="Search Player..."
                value={searchPlayer}
                onChange={handlePlayerSearchChange}
            />
            <input type='submit' value='Search' onSubmit={handleSearchSubmit}/>
        </form>
    </div>
  )
}

export default PlayerSearch