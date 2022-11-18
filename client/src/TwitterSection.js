import React from 'react'
import {TwitterTimelineEmbed} from "react-twitter-embed";

function TwitterSection() {
  
  return (
<section className="twitter-section">
      <div className="twitter-embed">
        <TwitterTimelineEmbed 
          className="twitter-timeline"
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

export default TwitterSection














//{/* <a class="twitter-timeline" data-width="500" data-height="400" data-theme="light" href="https://twitter.com/NBA?ref_src=twsrc%5Etfw">Tweets by NBA</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script> */}