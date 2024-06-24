// Shader "Custom/Leaf"
// {
//     Properties
//     {
//         _Color ("Color", Color) = (1,1,1,1)
//         _MainTex ("Albedo (RGB)", 2D) = "white" {}
     
//     }
//     SubShader
//     {
//         Tags { "RenderType"="TransparentCutout" }
//         Cull off

//         CGPROGRAM
//         // Physically based Standard lighting model, and enable shadows on all light types
//         #pragma surface surf Lambert addshadow

//         // Use shader model 3.0 target, to get nicer looking lighting
//         #pragma target 3.0

//         sampler2D _MainTex;

//         struct Input
//         {
//             float2 uv_MainTex;
//         };

//         half _Glossiness;
     
//         UNITY_INSTANCING_BUFFER_START(Props)
   
//         UNITY_INSTANCING_BUFFER_END(Props)

//         void surf (Input IN, inout SurfaceOutput o)
//         {
//             // Albedo comes from a texture tinted by color
//             fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
//             o.Albedo = c.rgb;
//             o.Alpha = c.a;
//             // clip(o.Alpha-0.3);

//         }
//         ENDCG
//     }
//     FallBack "Diffuse"
// }
