float4 gColor;  
sampler Tex0;

float4 PS(float2 Tex : TEXCOORD0) : COLOR0
{
    float4 color = tex2D(Tex0, Tex);
    float alpha = 0.6; 
    color.rgb = lerp(color.rgb, gColor.rgb, alpha);  
    return color;
}

technique T0
{
    pass P0
    {
        PixelShader = compile ps_2_0 PS();
    }
}
