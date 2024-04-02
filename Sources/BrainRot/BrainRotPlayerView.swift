import BrainRotC

class BrainRotPlayerView: UIView {
   override static var layerClass: AnyClass { AVPlayerLayer.self }

    var player: AVPlayer? {
        get { playerLayer.player }
        set { playerLayer.player = newValue }
    }
    
    public var playerLayer: AVPlayerLayer { layer as! AVPlayerLayer }
}
