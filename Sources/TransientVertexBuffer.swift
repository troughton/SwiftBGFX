// Copyright 2016 Stuart Carnie.
// License: https://github.com/stuartcarnie/SwiftBGFX#license-bsd-2-clause
//

import Cbgfx

/// Represents a transient index buffer
///
/// - remark:
/// The contents of the buffer are valid for the current frame only.
/// You must call SetVertexBuffer with the buffer or a leak could occur.
public struct TransientVertexBuffer {
    internal var buffer: bgfx_transient_vertex_buffer
    
    public var data: UnsafeMutablePointer<UInt8> {
        return buffer.data!
    }
    
    public var size: UInt32 {
        return buffer.size
    }
    
    public init(count: UInt32, layout: VertexLayout) {
        buffer = bgfx_transient_vertex_buffer()
        bgfx_alloc_transient_vertex_buffer(&buffer, count, &layout.handle)
	}
	
    /// Checks for available space to allocate an instance buffer
    ///
    /// - parameter count: The number of 16-bit indices to allocate
    ///
    /// - returns: `true` if there is space available for the given number of indices
    public static func checkAvailableSpace(count: UInt32, layout: VertexLayout) -> Bool {
        return bgfx_check_avail_transient_vertex_buffer(count, &layout.handle)
    }
}
