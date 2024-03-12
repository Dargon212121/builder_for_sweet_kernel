# BUILD
1. Clone kernal from github:
```
git clone https://github.com/ViP3R-KERNELs/kernel_xiaomi_sweet.git -b 13
```

2. Clone builder and toolchains:
```
git clone https://github.com/Dargon212121/builder_for_sweet_kernel.git
```

3. Move builder in to kernal source:
```
mv build_kernel.sh sweet_nethunter_kernel
```

4. Edit path to toolchains:
```
cd sweet_nethunter_kernel
nano build_kernel.sh
```

5. Run build:
```
bash build_kernal.sh
```

6. Make kernal boot shit:
```
cd OP7_A11
rm -rf dtb.img Image.gz-dtb
cp /sweet_nethunter_kernel/out/arch/arm64/boot/dtd.img OP7_A11/
cp /sweet_nethunter_kernel/out/arch/arm64/boot/Image.gz-dtb OP7_A11/
```

7. Flash your kernel in TWRP and have fun!



