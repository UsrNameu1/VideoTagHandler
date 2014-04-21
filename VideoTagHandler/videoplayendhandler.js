//
//  videohandler1.js
//
//  Created by adachi.yuichi on 2014/04/21.
//  Copyright (c) 2014年 adachi.yuichi. All rights reserved.
//

(function () {
    var scheme = 'videohandler://';
  
    var videos = document.getElementsByTagName('video');
  
    for (var i = 0; i < videos.length; i++) {
        videos[i].addEventListener('play', onPlay, false);
        videos[i].addEventListener('ended', onEnded, false);
    }
  
    function onPlay() {
        window.location = scheme + 'video-play';
    }
  
    function onEnded() {
        window.location = scheme + 'video-ended';
    }
})();