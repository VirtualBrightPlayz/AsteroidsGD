GDPC                                                                                 @   res://.import/aicon.png-deed3a4e90a3fa86db4480774276f25e.stex   �      <      ����(��m�;��W�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�,      �      �Q!����|M�   res://Asteroid.tscn P      �      絕ޤr�8�|̛>ο   res://Bullet.tscn   �      y      &��S�=�������   res://Globals.gd.remap  �X      "       �T�u,��-.2��2�k�   res://Globals.gdc   P            ����wU 	~3N�v�   res://Main.tscn p      p      v��U��4����_`3   res://Player.tscn   �             ��2�_!}�x���   res://aicon.png 0[      Y      42���B�8��̂T��   res://aicon.png �Y      Y      42���B�8��̂T��   res://aicon.png.import          1      48 �N�eɿ��^w��   res://default_env.tres  `"      
      �?�թ+Ev�/h�!b�   res://icon.png.import   P:      .      y/�f�\�>w�ۨJ	   res://project.binary�\            v0 ��@��:+y�u���    res://scripts/Asteroid.gd.remap �X      +       ��,i����%��p   res://scripts/Asteroid.gdc  �<      �      ���Xk?���^�����    res://scripts/Bullet.gd.remap   Y      )       �+7� ��5��n�_��f   res://scripts/Bullet.gdc0B      �      ���'�}Wn2��>$   res://scripts/Score.gd.remap@Y      (       ���Z��OE�ZJPP!   res://scripts/Score.gdc �H            8�$]��p��-f�ː0�    res://scripts/player.gd.remap   pY      )       �'���u�4�SX�   res://scripts/player.gdc�I             �!�Dh�����㞱    res://scripts/rndSpawn.gd.remap �Y      +       �S�Z �����?ݵ   res://scripts/rndSpawn.gdc  U      �      ��tglW������e            [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/Asteroid.gd" type="Script" id=1]

[node name="RigidBody2D" type="RigidBody2D"]

input_pickable = false
collision_layer = 3
collision_mask = 3
mode = 0
mass = 1.0
friction = 1.0
bounce = 0.0
gravity_scale = 0.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = true
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0
script = ExtResource( 1 )
_sections_unfolded = [ "Collision" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]


[gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/Bullet.gd" type="Script" id=1]

[node name="Bullet" type="RigidBody2D"]

input_pickable = false
collision_layer = 2
collision_mask = 2
mode = 0
mass = 1.0
friction = 1.0
bounce = 0.0
gravity_scale = 0.0
custom_integrator = false
continuous_cd = 0
contacts_reported = 0
contact_monitor = false
sleeping = false
can_sleep = true
linear_velocity = Vector2( 0, 0 )
linear_damp = -1.0
angular_velocity = 0.0
angular_damp = -1.0
script = ExtResource( 1 )
_sections_unfolded = [ "Collision" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]


       GDSC            -      ���Ӷ���   ����Ӷ��   �����϶�   �嶶   �����������Ӷ���   �����Ҷ�   �����Ӷ�   ���Ķ���                                   	                  +      5TT=�  TT3�  LMR�  �  �"  L�  P�  LMP�  �  P�  LMP�  �  P�  LMP�  MT[ [gd_scene load_steps=7 format=2]

[ext_resource path="res://Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://scripts/Score.gd" type="Script" id=2]
[ext_resource path="res://scripts/rndSpawn.gd" type="Script" id=3]
[ext_resource path="res://Globals.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 512, 10 )

[sub_resource type="RectangleShape2D" id=2]

custom_solver_bias = 0.0
extents = Vector2( 10, 300 )

[node name="Game" type="Node2D" index="0"]

[node name="KinematicBody2D" parent="." index="0" instance=ExtResource( 1 )]

position = Vector2( 532, 171 )

[node name="Label" type="Label" parent="." index="1"]

anchor_left = 0.0
anchor_top = 0.0
anchor_right = 0.0
anchor_bottom = 0.0
margin_right = 40.0
margin_bottom = 14.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1
script = ExtResource( 2 )

[node name="Copyright" type="Label" parent="." index="2"]

anchor_left = 0.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = 486.0
margin_right = 124.0
margin_bottom = 500.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "https://github.com/godotengine/godot/blob/master/LICENSE.txt"
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1

[node name="Disclaimer" type="Label" parent="." index="3"]

anchor_left = 0.0
anchor_top = 1.0
anchor_right = 1.0
anchor_bottom = 1.0
margin_top = 516.0
margin_right = 124.0
margin_bottom = 530.0
rect_pivot_offset = Vector2( 0, 0 )
rect_clip_content = false
mouse_filter = 2
mouse_default_cursor_shape = 0
size_flags_horizontal = 1
size_flags_vertical = 4
text = "I do not own Asteroids by Atari Inc. (there is good reason as to why this is free) I do not collect any information from this program."
percent_visible = 1.0
lines_skipped = 0
max_lines_visible = -1

[node name="Border" type="Node2D" parent="." index="4"]

editor/display_folded = true

[node name="StaticBody2D4" type="StaticBody2D" parent="Border" index="0"]

editor/display_folded = true
position = Vector2( 512, 610 )
input_pickable = false
collision_layer = 3
collision_mask = 3
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 1.0
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Border/StaticBody2D4" index="0"]

shape = SubResource( 1 )

[node name="StaticBody2D3" type="StaticBody2D" parent="Border" index="1"]

editor/display_folded = true
position = Vector2( 512, -10 )
input_pickable = false
collision_layer = 3
collision_mask = 3
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 1.0
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Border/StaticBody2D3" index="0"]

shape = SubResource( 1 )

[node name="StaticBody2D2" type="StaticBody2D" parent="Border" index="2"]

editor/display_folded = true
position = Vector2( 1034, 300 )
input_pickable = false
collision_layer = 3
collision_mask = 3
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 1.0
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Border/StaticBody2D2" index="0"]

shape = SubResource( 2 )

[node name="StaticBody2D" type="StaticBody2D" parent="Border" index="3"]

editor/display_folded = true
position = Vector2( -10, 300 )
input_pickable = false
collision_layer = 3
collision_mask = 3
constant_linear_velocity = Vector2( 0, 0 )
constant_angular_velocity = 0.0
friction = 1.0
bounce = 1.0
_sections_unfolded = [ "Transform" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Border/StaticBody2D" index="0"]

shape = SubResource( 2 )

[node name="World" type="Node2D" parent="." index="5"]

script = ExtResource( 3 )

[node name="Globals" type="Node" parent="." index="6"]

script = ExtResource( 4 )


[gd_scene load_steps=3 format=2]

[ext_resource path="res://scripts/player.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]

custom_solver_bias = 0.0
extents = Vector2( 20, 20 )

[node name="KinematicBody2D" type="KinematicBody2D"]

input_pickable = false
collision_layer = 1
collision_mask = 1
collision/safe_margin = 0.08
script = ExtResource( 1 )
_sections_unfolded = [ "Collision" ]

[node name="CollisionShape2D" type="CollisionShape2D" parent="." index="0"]

shape = SubResource( 1 )


GDST(   :              PNG �PNG

   IHDR   (   :   ���   �IDATh�����0��b|����j	!A֞��z�K���atQ�]&�5p�h��F Z3�l%�K-�2M0i=�	��BȲ�UM�1��^�'b aV�g��Wq+�;����!Q�H�>x��������W8�mz��΋(�0�H,���Z\�v��h. r-��s�O���[OD Z�;�����iD�� [��=��{6=p�����O�O�@��s�G�O�@4�D� �npXX���    IEND�B`�    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/aicon.png-deed3a4e90a3fa86db4480774276f25e.stex"

[deps]

source_file="res://aicon.png"
dest_files=[ "res://.import/aicon.png-deed3a4e90a3fa86db4480774276f25e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

radiance_size = 4
sky_top_color = Color( 0.0470588, 0.454902, 0.976471, 1 )
sky_horizon_color = Color( 0.556863, 0.823529, 0.909804, 1 )
sky_curve = 0.25
sky_energy = 1.0
ground_bottom_color = Color( 0.101961, 0.145098, 0.188235, 1 )
ground_horizon_color = Color( 0.482353, 0.788235, 0.952941, 1 )
ground_curve = 0.01
ground_energy = 1.0
sun_color = Color( 1, 1, 1, 1 )
sun_latitude = 35.0
sun_longitude = 0.0
sun_angle_min = 1.0
sun_angle_max = 100.0
sun_curve = 0.05
sun_energy = 16.0
texture_size = 2

[resource]

background_mode = 2
background_sky = SubResource( 1 )
background_sky_custom_fov = 0.0
background_color = Color( 0, 0, 0, 1 )
background_energy = 1.0
background_canvas_max_layer = 0
ambient_light_color = Color( 0, 0, 0, 1 )
ambient_light_energy = 1.0
ambient_light_sky_contribution = 1.0
fog_enabled = false
fog_color = Color( 0.5, 0.6, 0.7, 1 )
fog_sun_color = Color( 1, 0.9, 0.7, 1 )
fog_sun_amount = 0.0
fog_depth_enabled = true
fog_depth_begin = 10.0
fog_depth_curve = 1.0
fog_transmit_enabled = false
fog_transmit_curve = 1.0
fog_height_enabled = false
fog_height_min = 0.0
fog_height_max = 100.0
fog_height_curve = 1.0
tonemap_mode = 0
tonemap_exposure = 1.0
tonemap_white = 1.0
auto_exposure_enabled = false
auto_exposure_scale = 0.4
auto_exposure_min_luma = 0.05
auto_exposure_max_luma = 8.0
auto_exposure_speed = 0.5
ss_reflections_enabled = false
ss_reflections_max_steps = 64
ss_reflections_fade_in = 0.15
ss_reflections_fade_out = 2.0
ss_reflections_depth_tolerance = 0.2
ss_reflections_roughness = true
ssao_enabled = false
ssao_radius = 1.0
ssao_intensity = 1.0
ssao_radius2 = 0.0
ssao_intensity2 = 1.0
ssao_bias = 0.01
ssao_light_affect = 0.0
ssao_color = Color( 0, 0, 0, 1 )
ssao_quality = 0
ssao_blur = 3
ssao_edge_sharpness = 4.0
dof_blur_far_enabled = false
dof_blur_far_distance = 10.0
dof_blur_far_transition = 5.0
dof_blur_far_amount = 0.1
dof_blur_far_quality = 1
dof_blur_near_enabled = false
dof_blur_near_distance = 2.0
dof_blur_near_transition = 1.0
dof_blur_near_amount = 0.1
dof_blur_near_quality = 1
glow_enabled = false
glow_levels/1 = false
glow_levels/2 = false
glow_levels/3 = true
glow_levels/4 = false
glow_levels/5 = true
glow_levels/6 = false
glow_levels/7 = false
glow_intensity = 0.8
glow_strength = 1.0
glow_bloom = 0.0
glow_blend_mode = 2
glow_hdr_threshold = 1.0
glow_hdr_scale = 2.0
glow_bicubic_upscale = false
adjustment_enabled = false
adjustment_brightness = 1.0
adjustment_contrast = 1.0
adjustment_saturation = 1.0

            GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�  tIDATx��{p�U�����#�t��y�@y@�	��D�8;#ಳ���S3���FJ�*�-�]fQ�qx�K��B��$�y����o�AB:�n���U����{�=�|����ۢ`�<<^? �V����.%!L��(�K���m�e5p,� ZD��y x�~��h�=#@u�48��n����@��1��Z�^��$�} j��V��R!�tK��/�"$��^�>��d�=R�����% �7�J�>!Im�	�Ԛ��x !$Tj:c�DB��������4BSd4h ��IH*���x �Tj��$ ����I:��@�J�3�U߅�R���N%-�B�A �V�u�it���J@�7������I � B��В`b��b�3�}��bg��b,	���U ����,̞2�IwR�3!����}���ưm~��1-�����P~�������49�Dϸ;�pD��L徱�!QV�ƻ{�8\�¸O�N�w��[���-�Ⱥ��<�`�0+w����,���u�$�n��ɳ�q�7�������E�ֲ�������w����͜1Cx����Kouk�O̠�dӑx�2��?P��3�ә~GcF����+hs��s\w:�&�&)���w����n���2�r()�'{���!vJ����Ql8T��/wk�����=U,~�I�f�MO��;\�N��Z��@�:[����]��Z������-G�¶�ym�"�h�24����7����[��{:��h������*�S�7}ċ�:���t��Վ�ew���#^�<�u2S�-�LM�y[�KfW=��^{�1���=�8ߝ6�݇������p����,|��&�MU���Ǝ�鋊������sOSR��ʷ6����L����0i�w ��}�xsC�rŨiO) &������i�p�C����/�S����>�MIQ9Y��e5�%Rn���%�ܒ��?�s����OL��?���ƤS�	�������?�(����)3�����x�Lv��"k�U��T#?�7��fݏ�d��i闁})��_���6���Q���geY����U'բg�ܙ��7���}��s�%���P��������n�݌�'S���y���d��SQ����\������j���4^j۾k�9	.[<I�a�S=��ht�t��[==��
+��BRiX�xn�r":`������+il��il���+W���)%�Ft���t�;�l��!�
����y��Y��Et@C��L��Iy���o3��Rȴih����?�MYEK��a3i��@b3iY2-���>�xwĺ
���o֡�^x0?�J$/<��FR��o�
�_@����K��vwg'SZ�wJ�VSZh���d^[�������F���e�3HO2�ZG��xr\�YV�&-�Ml=Vω����h)�Lb��t�N����xm��5rb5��ç{��u,`�k{M�Z�Z^�;�������M����[�n,�5�$���d# ��Iz������������2��xL�`oy�%�ydX��={�E1g�#�zx67ld��lF�%�m���'51�y�ȴD�O�fㆍ�zx6sf?¢��8{�,V#KJ�bQ�W��3��L����e�ϗQYy �������}{�:���Q����%�^PBqfR����۷�7^��3	RYy��?_���e��d����3��a�&�������ԣ|׮�d��<מ�$	$I�kO�)w��]�z.aMMM���#�`Xr�����+�O�N�\�����6��ËV~���WsG���v@c���]��撗��{)I3g��pU�)��UfΜ�$uW1/?���\�_v�%>�KZ��O�Q���rJKKIM�SXX����m���Tc�2w�j�m��|�/),,$5�N���X��+���C��$EO7�����iy����"�����h�6��m���~����\����ҫ�bԪQ�3;X��WT6��o��e�+������0hT��Z�Z"�v��"�+�Ŏ���	�
k�T�fOV�O@[�F��٠' �i<@PVX�eM�r��y#�����I�#@��%C�Q�N�ˏ�����]��OyC;m�9J���OK�f�b3i����L���'4������kvr�Çդ%+�Ș��nuZ=���z�Q�aaL���r���-����.��ǊI�.(����p�9��ΠY�ރ��i8Py�w�Vu{f���g�ΨtK���?�G�-��mrA
���|P����[x�J.?-����ߓM��!}X�Q;  ˨U=á�+J�9<gZѫ%�aBU�$H��[��owV��㟦�R���J�aW�j	�J����uԨ�`�e5QO�m�.����b���]^j���zW���U5�\W���j.�P�$��E���4W^jb���a5ii�� 5�P^]��9��;��Cq��\`p����AZ��+/�.�BWً�BH2j0i�u����+#�9s��O{���{��d��ߡ0�������'eq�e��ZL:5&��I����D���Nez���.��p�H6ki�hl���q���|A\� ��~v�i۾0�B��Ț#'�5+��Q�V���.����G���o��W��I�A��?�>�0꣱.|� /��DA���g �ƌ�����D^Y��O�%�epǾcd���x�L�*�W�����hQK��^���v^�`;���}�����`�%O�&�n�w;+8Zۿ��2&+�N�%�f⵵[X��O1�P����� ZC���ՔU�0�<Z2���8}.�6:���a6M��'����ʲ�ֲm�����Keԓ`84j5ߛu?���5�Ls���O5r�����mx�Oe�E��(L�P��Ĕ�vR���;Y���������]�`�ЅZ�b�]�̚2����U*�BeSU�\Էxhl������㗑C
mW��YT���Ua1h��Ǟ�'�j`� �'��AY��c����9RFP�q��ע�i(�Ϧ8?���3��"����h������q�������0�G"�;B���8x�O���L�Q��b#-�J�لѠC-IX-��rG�9�����t���BC� �=���VP�aVe�~3���o������@���SP�
� !y��m᪭
���� �o�;@���V�߹]�ZQ9���M���$��(�,	i�w{����ֿj'�� ^g�����U�̑ �j��ɠ�<(J!$��c��A�Og��n��PB�;��)!IV:P���V�g�>�*���d�Ƿ�`�-1u>�ۇ*=o n�O��Rp�9�j�P=B�>�������w���
��"��eY�Q�Ѩ��1>��g�    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
  GDSC         '   <     ��������τ�   �������Ӷ���   ����Ķ��   �����϶�   ����������Ŷ   ���Ӷ���   ����¶��   ��������ݶ��   �������������ӄ򶶶�   ����Ӷ��   �����������������ӄ򶶶�   ����   �����Ŷ�   �������Ŷ���   ����׶��   �����Ӷ�   ����බ�   ��������   ����Ķ��   �������������������϶���   �����Ŷ�   ������������Ӷ��                          
                             �?                                                        "   	   (   
   8      A      T      g      y      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �         !     "     #      $   !  %   *  &   4  '   5TT=�  T=�  TT3�  LMR�  �  L�  M�  =�  �  LM�  �  �  �  �  LM�  =�  �  L�   LMN�   LMM�  �  P�  L�  �  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  L�   LMN�   LMM�  M�  �  P�  L�  �  M�  S�  P�	  �
  P�  LM�  S�  P�	  P�  �  TT3�  L�  MR�  �  �  �  &�  
�  R�  �  LM�  �  L�  MTT3�  LMR�  1�   LMTT3�  LMR�  =�  �  L�  N�  N�  M�  &�  �  R�  �  �  L�  N�  N�  M�  �  L�  N�  MTT3�  L�  N�  MR�  =�  �  LH�  IM�  �  L�  N�  M[        GDSC      	   +   /     ��������τ�   �������Ӷ���   ����Ķ��   �����϶�   ��������������Ķ   ����������������Ҷ��   ����������Ŷ   ������������������Ŷ   ���Ӷ���   ��������ݶ��   �������������ӄ򶶶�   ����Ӷ��   �����������������ӄ򶶶�   ����   �����Ŷ�   ���������������Ŷ���   ����׶��   �������������������Ŷ���   ߶��   ���������¶�   ���Ӷ���   �������Ӷ���   ����Ӷ��   �����������Ҷ���   �������Ŷ���   ����බ�   ��������   ����Ķ��   �������������������϶���   �����Ŷ�   ������������Ӷ��     �?                                                 World         /root/Game/Globals                                                             	      
   $      )      /      =      L      \      k      y      �      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %      &     '     (     )     *   '  +   5TT=�  T=�  TT3�  LMR�  �  �  �  �  �  �  �  L�  M�  �  L�  M�  =�  �  �  �  �  LM�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  S�
  P�  �  P�  LM�  S�
  P�  P�  �  TT3�  L�  MR�  &�  LMP�  LM�  R�  )�  �  LMR�  &�  P�  LMP�  �  R�  �  L�  MP�  �  �  �  P�  LMP�  L�  M�  �  LMP�  LMTT3�  L�  MR�  �  �  �  &�  
�  R�  �  LMP�  LMTT3�  LMR�  1�   LMTT3�  LMR�  =�  �  LN�  N�  M�  �  L�  N�  MTT3�  L�  N�  MR�  =�  �  LH�  IM�  �  L�  N�  M[             GDSC            "      ����ڶ��   �����϶�   �������Ŷ���   ����׶��   ���¶���   �������Ӷ���   ����Ӷ��      Score:        /root/Game/Globals                     	                        5TT3�  LMR�  0TT3�  L�  MR�  �  �6  L�  L�  MP�  M[        GDSC   -      A        ������������τ�   ��������Ҷ��   ���¶���   ����������¶   ��ڶ   ���ڶ���   ����Ķ��   �����϶�   ���Ӷ���   ��������ݶ��   �������������ӄ򶶶�   ����Ӷ��   �����������������ӄ򶶶�   ����   �����Ŷ�   ����������Ŷ   ������������������Ŷ   ��������   ����Ķ��   �������������������϶���   �����Ŷ�   ������������Ӷ��   ���������������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   ���¶���   �������Ӷ���   �������ض���   �������ض���   ��������������϶   ���������������Ŷ���   ���������¶�   ��������Ҷ��   �����Ӷ�   �������������Ӷ�   ���������ڶ�   ������������������ض   ��������������¶   �������Ķ���   ���Ӷ���   �������Ӷ���   ����Ӷ��   �������Ӷ���   �����������Ӷ���  �             res://Bullet.tscn               333333�?               ?                           �?  {�G�z�?      up                 down      left  �������?      right         shoot     Z         ,            World         /root/Game/Globals        res://Main.tscn       ded                          	                           	      
   $      %      +      0      6      F      U      d      r      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '     (     )     *     +     ,   (  -   ,  .   9  /   =  0   F  1   m  2   �  3   �  4   �  5   �  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >     ?     @     A   5TT<�  TT=�  ?L�  MTT=�  T=�  �  T=�  �  T=�  �  TT3�  LMR�  =�  �  �  �  �  LM�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  �  P�	  L�  L�  N�  M�  M�  S�
  P�  �  P�  LM�  S�
  P�  P�  �  �  �  L�  M�  �  L�  MTT3�  LMR�  =�  �  L�  N�	  N�  M�  �  L�  N�  MTT3�  L�  N�  MR�  =�  �  LH�  IM�  �  L�  N�  MTT3�  L�  MR�  �  �  �  �  �  �  L�  N�  N�
  M�  �  �  L�  N�  N�
  M�  &�  P�  L�  MR�  �  �  �  &�  P�  L�  MR�  �  �  �  &�  P�  L�  MR�  �  �  �  &�  P�  L�  MR�  �  �  �  &�  P�  L�  M�  
�  R�  �  �  �  =�  �  P�  LM�  �  P�  P�  L�  L�  LL�  M�$  L�  MMNLL�  M�$  L�  MMM�  M�  �  P�  �  L�  LL�  M�$  L�  MMNLL�  M�$  L�  MMM�  �  �  P�  �  �  P�   LMP�!  L�  M�  �  �"  L�  �  M�  �  �#  L�  L�  LL�  M�$  L�  MMNLL�  M�$  L�  MMM�  M�  �  &�$  LMR�  &�%  L�&  LM�  MP�'  P�   LMP�(  �  R�  &�%  L�&  LM�  MP�'  P�  
�  R�  �)  L�  MP�*  �  �  �+  LMP�,  L�  M�  �7  L�  M�  �  �  �  �  �  [GDSC      
      �      ���ӄ�   ����Ҷ��   ����Ķ��   �����϶�   ����������Ŷ   ߶��   ����ض��   �������Ŷ���   ����׶��   ���¶���   �������Ӷ���   �������ض���   ��������������϶   ���������������Ŷ���   ��������Ҷ��      res://Asteroid.tscn                                              X        2         
         h                                                          	   (   
   ,      -      4      8      >      I      M      Q      R      X      a      v      �      �      �      5TT=�  ?LMT=�  �  TTT3�  LMR�  �  L�  M�  )�  �@  L�  N�  MR�  �  LMTT3�  L�  MR�  �  �  �  &�  
�  R�  )�  �@  L�  N�  MR�  �  LM�  �  �  TT3�  LMR�  =�	  �  P�
  LM�  �	  P�  L�  L�  LM�  N�  LM�  MM�  �	  P�  �  L�  LM�  �  N�  LM�  �  M�  �	  P�  �  LM�	  �  P�  L�	  MT[       [remap]

path="res://Globals.gdc"
              [remap]

path="res://scripts/Asteroid.gdc"
     [remap]

path="res://scripts/Bullet.gdc"
       [remap]

path="res://scripts/Score.gdc"
        [remap]

path="res://scripts/player.gdc"
       [remap]

path="res://scripts/rndSpawn.gdc"
     �PNG

   IHDR   (   :   ���   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d   �IDAThC��Q
�0�����a���J 6��JH����9�O�����6�T3P�@�n����Oz�Y�F �3(`~e	�wq�����a,�c���z�,�n�ΐ*I@�BF�la��[��|���A�*� �ġP���2J��ѯw��nM ���O�G��.�w��C�����=T�y�j�[{��#V���è�C�����;�F���W���f��������sT��{    IEND�B`�       �PNG

   IHDR   (   :   ���   sRGB ���   gAMA  ���a   	pHYs  �  ��o�d   �IDAThC��Q
�0�����a���J 6��JH����9�O�����6�T3P�@�n����Oz�Y�F �3(`~e	�wq�����a,�c���z�,�n�ΐ*I@�BF�la��[��|���A�*� �ġP���2J��ѯw��nM ���O�G��.�w��C�����=T�y�j�[{��#V���è�C�����;�F���W���f��������sT��{    IEND�B`�       ECFG      application/config/name      	   Asteroids      application/run/main_scene         res://Main.tscn    application/boot_splash/image         res://aicon.png    application/config/icon         res://aicon.png    display/window/size/resizable             input/upx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  W          unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script         
   input/downx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  S          unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script         
   input/leftx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  A          unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script            input/rightx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  D          unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode           unicode              echo          script            input/shootx              InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode             unicode              echo          script               InputEventKey         resource_local_to_scene           resource_name             device               alt           shift             control           meta          command           pressed           scancode  Z          unicode              echo          script            layer_names/2d_physics/layer_1         main   layer_names/2d_physics/layer_2         bullet  7   rendering/quality/intended_usage/framebuffer_allocation             )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres                 GDPC