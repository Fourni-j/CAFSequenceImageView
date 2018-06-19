//
//  CAFSequenceImageView.swift
//  CAFSequenceImageView
//
//  Created by Charles-Adrien Fournier on 19/06/2018.
//

import UIKit

public class CAFSequenceImageView: UIImageView {
    
    public var images: [UIImage] {
        didSet {
            currentImageIndex = 0
        }
    }
    
    public var interval: TimeInterval {
        didSet {
            setupSequenceDisplay()
        }
    }
    
    private var sequenceTimer: Timer?
    private var currentImageIndex = 0
    
    public init(images: [UIImage] = [], interval: TimeInterval = 1) {
        self.images = images
        self.interval = interval
        super.init(frame: .zero)
        setupSequenceDisplay()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupSequenceDisplay() {
        if sequenceTimer != nil {
            self.sequenceTimer?.invalidate()
            self.sequenceTimer = nil
        }
        sequenceTimer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true, block: { [weak self] _ in
            guard let strongSelf = self else { return }
            strongSelf.image = strongSelf.images[strongSelf.currentImageIndex]
            strongSelf.currentImageIndex += 1
            if strongSelf.currentImageIndex >= strongSelf.images.count {
                strongSelf.currentImageIndex = 0
            }
        })
    }
    
}
