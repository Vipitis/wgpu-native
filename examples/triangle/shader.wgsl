@vertex
fn vs_main(@builtin(vertex_index) in_vertex_index: u32) -> @builtin(position) vec4<f32> {
    let x = f32(i32(in_vertex_index) - 1);
    let y = f32(i32(in_vertex_index & 1u) * 2 - 1);
    return vec4<f32>(x, y, 0.0, 1.0);
}

@fragment
fn fs_main() -> @location(0) vec4<f32> {
    var a = f32(1.0);
    var b = f32(0.0);

    var i: i32 = 0i;
    loop {
        if !((i < 100i)) {
            break;
        }
        {
            a = (a - 0.005f);
        }
        continuing {
            b = (b + 0.1f);
        }
    }

    return vec4<f32>(1.0, b, a, 1.0);
}
