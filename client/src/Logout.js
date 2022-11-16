import React from 'react'


function Logout({setCurrentUser}) {
  
  function handleLogout() {
    fetch("/logout", {
      method: "DELETE",
    }).then(() => setCurrentUser(null));
  }

  return (
    <header>
      <button onClick={handleLogout}>Logout</button>
    </header>
  );
}

export default Logout