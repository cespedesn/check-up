import React from 'react'
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';

function TeamTile({team, city, conference, division, fullname, name}) {
  return (
    <div className= 'card-div'>
        <Card className='grid' style={ { width: '12rem', margin: '1rem' }}>
            <Card.Header as="h6">{team}</Card.Header>
            <Card.Body>
                <Card.Title>{fullname} {name}</Card.Title>
                    <Card.Text>
                    {conference}ern Conference
                    </Card.Text>
                    <Card.Text>
                    {division}
                    </Card.Text>
                <Button variant="primary">Stats</Button>
            </Card.Body>
        </Card>
</div>
  )
}

export default TeamTile

