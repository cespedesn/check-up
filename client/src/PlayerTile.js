import React from 'react'
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import ListGroup from 'react-bootstrap/ListGroup';


function PlayerTile({firstname, lastname, position, team}) {



  return (
    <div className= 'card-div'>
        <Card className='grid' style={ { width: '12rem', margin: '1rem' }}>
            <Card.Header as="h6">Player Info</Card.Header>
            <Card.Body>
                <Card.Title>{firstname} {lastname}</Card.Title>
                    <Card.Text>
                    {position}
                    </Card.Text>
                    <Card.Text>
                    {team}
                    </Card.Text>
                <Button variant="primary">Stats</Button>
            </Card.Body>
        </Card>
    </div>

  )
}

export default PlayerTile

   