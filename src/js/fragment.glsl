        varying vec2 vUv;
        uniform vec2 u_resolution;
        uniform vec2 u_mouse;
        uniform float u_time;
        uniform sampler2D texture;
        uniform sampler2D map;
        uniform float u_animation;
        void main() {
            // vec2 st = gl_FragCoord.xy/u_resolution.xy;
            //float m =  (u_mouse.x/u_resolution.x - 0.5)*0.01;
            float distort = sin(vUv.y * 100.0 + u_time)*0.003;
           // float map = texture2D(map, vUv).r * u_animation;
            float map = texture2D(map, vUv).r;
            vec4 color = texture2D(texture, vec2(vUv.x + distort*map,vUv.y));
            // gl_FragColor = vec4(abs(sin(u_time)),0.0,0.0,1.0);
            // gl_FragColor = vec4( vec3(0.0,1.0,0.0),1.0);
            //gl_FragColor = vec4(color.rgb*(1.0-map) + map* vec3(color.r + color.g + color.b)/3.0,1.0);
            gl_FragColor = vec4(color.rgb,1.0);
        }