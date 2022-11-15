import React from 'react'
import { TwitterTimelineEmbed } from "react-twitter-embed";

function TwitterSection() {

  return (
<section className="twitter-section">
      <div className="twitter-embed">
        <TwitterTimelineEmbed
          sourceType="profile"
          screenName="NBA"
          options={{
            tweetLimit: "8",
            width: "35%",
            height: "500%"
          }}
          theme="light"
          noHeader="true"
          noBorders="true"
          noFooter="true"
        ></TwitterTimelineEmbed>
      </div>
    </section>
  )
}

export default TwitterSection