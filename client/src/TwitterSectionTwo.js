import React from 'react'
import {TwitterTimelineEmbed} from 'react-twitter-embed'

function TwitterSectionTwo() {
  return (
    <section className="twitter-section-two">
      <div className="twitter-embed-two">
        <TwitterTimelineEmbed 
          className="twitter-timeline-two"
          sourceType="profile"
          screenName="NBA"
          options={{
            tweetLimit: "8",
            width: "35%",
            height: "1000%"
          }}
          theme="light"
          noHeader="true"
          borders="true"
          noFooter="true"
        ></TwitterTimelineEmbed>
      </div>
    </section>
  )
}

export default TwitterSectionTwo