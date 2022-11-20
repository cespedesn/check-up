import React from 'react'
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';

function StatsTile({ast, blk, dreb, fg3_pct, fg3a, fg3m, fg_pct, fga, fgm, ft_pct, fta, ftm, player_id }) {
  return (
    <div className= 'card-div'>
        <Card className='grid' style={ { width: '12rem', margin: '1rem' }}>
            <Card.Header as="h6">Stats</Card.Header>
            <Card.Body>
                {/* <Card.Title></Card.Title> */}
                    <Card.Text>
                    AST  =  {ast}
                    </Card.Text>
                    <Card.Text>
                    BLK  =  {blk}
                    </Card.Text>
                    <Card.Text>
                    DREB  =  {dreb}
                    </Card.Text>
                    <Card.Text>
                    FG3-PCT  =  {fg3_pct}
                    </Card.Text>
                    <Card.Text>
                    FG3A  =  {fg3a}
                    </Card.Text>
                    <Card.Text>
                    FG3M  =  {fg3m}
                    </Card.Text>
                    <Card.Text>
                    FG=PCT  =  {fg_pct}
                    </Card.Text>
                    <Card.Text>
                    FGA  =  {fga}
                    </Card.Text>
                    <Card.Text>
                    FGA  =  {fgm}
                    </Card.Text>
                    <Card.Text>
                    FT-PCT  =  {ft_pct}
                    </Card.Text>
                    <Card.Text>
                    FTA  =  {fta}
                    </Card.Text>
                    <Card.Text>
                    FTM  =  {ftm}
                    </Card.Text>
                
                <Button variant="primary">Back to Player</Button>
            </Card.Body>
        </Card>
    </div>
  )
}

export default StatsTile