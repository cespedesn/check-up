import React from 'react'
import { useState, useEffect } from 'react'
import PlayerSearch from './PlayerSearch'
import PlayerTile from './PlayerTile'
import Stats from './Stats'



function StatsFaceOffPage({player}) {
    const [playerList, setPlayerList]  = useState([])
    const [searchPlayer, setSearchPlayer] = useState('')
    const [errors, setErrors] = useState(false)
    const [stats, setStats] = useState([])
    

    // let randomPlayers =(Math.floor((Math.random() * playerList) + 1))
   

    useEffect(() => {
        fetch(`/players/`)
        .then(res => {
            if(res.ok){
                res.json().then((data) => {
                    setPlayerList(data)
                })
            } else {
                res.json().then(data => setErrors(data.error))
            }
        })
        
        fetch('/stats/')
        .then(res => {
            if(res.ok){
                res.json().then((data) => {
                    setStats(data)
                    console.log(data)
                })
            } else {
                res.json().then(data => setErrors(data.error))
            }
        })
    },[])
    // console.log(stats)
    
    const playersToDisplay = playerList.map((player) => {
        return (
            <PlayerTile 
             key={player.id}
             firstname={player.first_name}
             lastname={player.last_name}
             position={player.position}
             team={player.team.abbreviation}
             player={player}

            />
        )
    })

    

  return (
   <div className='parent-stats-div'>
        <PlayerSearch 
            player={player}
            searchPlayer={searchPlayer}
            setSearchPlayer={setSearchPlayer}
            setPlayerList={setPlayerList}
        />
        <div className='parent-card-div'>{playersToDisplay}</div>
        <Stats stats={stats} setStats={setStats}/>
   </div>
  )
    
}

export default StatsFaceOffPage


        
          
       













// return (
    //     <div className='parent-stats-div'>
    //         <PlayerTile 
    //             searchPlayer={searchPlayer}
    //             setSearchPlayer={setSearchPlayer}
    //             setPlayerList={setPlayerList}        
    //         />
    //         {playerList.map((player) => (
    //             <div  key={player.id}>
    //                 <PlayerTile
    //                     firstname={player.first_name}
    //                     lastname={player.last_name}
    //                     position={player.position}
    //                     team={player.team.abbreviation}
    //                 />
    //             </div>
    //         ))}
    //     </div>
    // );