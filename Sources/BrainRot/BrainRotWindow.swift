import BrainRotC
import libroot

class BrainRotWindow: UIWindow {
     override init(frame: CGRect) {
        super.init(frame: frame)

        let path = jbRootPath("/Library/Tweak Support/dev.rugmj.brainrot/gameplay.mp4")

        let videoURL = URL(fileURLWithPath: path)

        let player = AVPlayer(url: videoURL)
        
        let playerView = BrainRotPlayerView(frame: frame)
        playerView.player = player
        playerView.playerLayer.videoGravity = .resize

        addSubview(playerView)
        remLog(playerView)
        
        player.play()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
