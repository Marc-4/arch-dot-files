workspace.windowActivated.connect(function(client) {
  if (client) {
    // console.log("curent client:", client)
    var clients = workspace.windowList();
    for (var i = 0; i < clients.length; i++) {
      if (clients[i] !== client && !clients[i].minimized) {
        clients[i].minimized = true;
      }
    }
  }
});
