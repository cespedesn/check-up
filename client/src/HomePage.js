import React from 'react'
import TwitterSection from './TwitterSection';
import { useState, useEffect } from 'react';
import ExistingLogin from './ExistingLogin'


function HomePage() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    fetch("/login").then((response) => {
      if (response.ok) {
        response.json().then((user) => setUser(user));
      }
    });
  }, []);

  if (user) {
    return <h2>Welcome, {user.user_name}!</h2>;
  } else
  return (
    <div>
      <TwitterSection />
      <ExistingLogin onLogin={setUser} />
    </div>
  )
}

export default HomePage