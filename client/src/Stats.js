import React from 'react'
import StatsTile from './StatsTile'

function Stats({stats, setStats}) {
  

  if(!stats || stats.length === 0) {return null}
    const individualStats = stats.map((stat) => {
      return (
        <StatsTile 
          key={stat.id}
          ast={stat.ast}
          blk={stat.blk}
          dreb={stat.dreb}
          fg3_pct={stat.fg3_pct}
          fg3a={stat.fg3a}
          fg3m={stat.fg3m}
          fg_pct={stat.fg_pct}
          fga={stat.fga}
          fgm={stat.fgm}
          ft_pct={stat.ft_pct}
          fta={stat.fta}
          ftm={stat.ftm}
          player_id={stat.player.id}
        />
      )
    })
  return (
    <div className='parent-card-div' >{individualStats}</div>
  )
}

export default Stats