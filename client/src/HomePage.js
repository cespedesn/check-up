import React from 'react'
import { useState, useEffect } from 'react';
import ExistingLogin from './ExistingLogin'
import TeamTile from './TeamTile';


function HomePage() {
  const [user, setUser] = useState(null);
  const [teams, setTeams] = useState([])
  const [errors, setErrors] = useState(false)
  const [teamList, setTeamList] = useState([])

  useEffect(() => {
    fetch(`/teams/`)
    .then(res => {
        if(res.ok){
            res.json().then((data) => {
              console.log('data', data)
                setTeamList(data)
            })
        } else {
            res.json().then(data => setErrors(data.error))
        }
    })
  },[])
console.log(teamList)

  const teamsToDisplay = teamList.map((team) => {
    return (
        <TeamTile 
         key={team.id}
         team={team.abbreviation}
         city={team.city}
         conference={team.conference}
         division={team.division}
         fullname={team.fullname}
         name={team.name}

        />
    )
})


  useEffect(() => {
    fetch("/login").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (user) {
    return (

  
    <div>
       <h1>Welcome, {user.user_name}!</h1>
        <div className='parent-card-div'>{teamsToDisplay}</div>
      <ExistingLogin onLogin={setUser} />
    </div>

  )
} else {
  return null
}
}
export default HomePage;