//
//  wave.metal
//  GRFlag
//
//  Created by Angelos Staboulis on 30/12/23.
//

#include <metal_stdlib>
using namespace metal;
[[ stitchable ]] float2 wave(float2 position, float time) {
    return position-float2(0, sin(position.x*0.05+time)*5);
}

