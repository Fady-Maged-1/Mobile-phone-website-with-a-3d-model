function changeVideo() {
    const video = document.getElementById("vid");
    const toggle = document.getElementById("mode-toggle");
    
    // تغيير مصدر الفيديو بناءً على وضع السويتش
    const newSrc = toggle.checked
      ? "D:\\Web Progect\\Welcome Back to mobogo.mp4"  // ☀️ فيديو النهار
      : "D:\\Web Progect\\0fbce473a7f05334b8859b2765913ddaIntroducing_iPhone_16_Pro_Apple (online-video-cutter.com).mp4"; // 🌙 فيديو الليل

    video.innerHTML = "";

    const newSource = document.createElement("source");
    newSource.src = newSrc;
    newSource.type = "video/mp4";

    video.appendChild(newSource);
    video.load();
    video.play();
  }