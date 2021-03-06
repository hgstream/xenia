test_vmrglh_1:
  #_ REGISTER_IN v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_IN v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  vmrglh v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [00010203, 04050607, 08090A0B, 0C0D0E0F]
  #_ REGISTER_OUT v4 [10111213, 14151617, 18191A1B, 1C1D1E1F]
  #_ REGISTER_OUT v5 [08091819, 0a0b1a1b, 0c0d1c1d, 0e0f1e1f]

test_vmrglh_2:
  #_ REGISTER_IN v3 [00000001, 00020003, 00040005, 00060007]
  #_ REGISTER_IN v4 [00080009, 000A000B, 000C000D, 000E000F]
  vmrglh v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [00000001, 00020003, 00040005, 00060007]
  #_ REGISTER_OUT v4 [00080009, 000A000B, 000C000D, 000E000F]
  #_ REGISTER_OUT v5 [0004000C, 0005000D, 0006000E, 0007000F]

test_vmrglh_3:
  #_ REGISTER_IN v3 [FFF8FFF9, FFFAFFFB, FFFCFFFD, FFFEFFFF]
  #_ REGISTER_IN v4 [00000001, 00020003, 00040005, 00060007]
  vmrglh v5, v3, v4
  blr
  #_ REGISTER_OUT v3 [FFF8FFF9, FFFAFFFB, FFFCFFFD, FFFEFFFF]
  #_ REGISTER_OUT v4 [00000001, 00020003, 00040005, 00060007]
  #_ REGISTER_OUT v5 [FFFC0004, FFFD0005, FFFE0006, FFFF0007]
