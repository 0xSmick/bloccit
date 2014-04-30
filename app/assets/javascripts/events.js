var _bm_pageview = {
  type: "pageview",
  web_property_id: 2,
  url: "http://bloccit-sheldon.herokuapp.com/",
}

var _bm_event = new XMLHttpRequest();
_bm_event.open("POST", "http://localhost:3000/events.json", true);
_bm_event.setRequestHeader('Content-Type', 'application/json');
_bm_event.onreadystatechange = function() {};

_bm_event.send(JSON.stringify(_bm_pageview));