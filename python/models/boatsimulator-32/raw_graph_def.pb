
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shared_name *
dtype0*
	container *
shape: 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
_class
loc:@global_step*
validate_shape(*
use_locking(*
T0
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
add/yConst*
value	B :*
dtype0
,
addAddglobal_step/readadd/y*
T0
t
AssignAssignglobal_stepadd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
F
last_reward/initial_valueConst*
dtype0*
valueB
 *    
W
last_reward
VariableV2*
shape: *
shared_name *
dtype0*
	container 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
_class
loc:@last_reward*
validate_shape(*
use_locking(*
T0
?
statePlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0

-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
valueB"   @   *
dtype0
y
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *ôåž
y
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
valueB
 *ôå>*
dtype0
Å
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*
_class
loc:@dense/kernel
ļ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
T0
Ā
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel
˛
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
	container *
shape
:@*
shared_name *
_class
loc:@dense/kernel*
dtype0
§
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
U
dense/kernel/readIdentitydense/kernel*
_class
loc:@dense/kernel*
T0
_
dense/MatMulMatMulstatedense/kernel/read*
transpose_a( *
transpose_b( *
T0
)

dense/TanhTanhdense/MatMul*
T0

/dense_1/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0
}
-dense_1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_1/kernel*
valueB
 *×ŗ]ž*
dtype0
}
-dense_1/kernel/Initializer/random_uniform/maxConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *×ŗ]>
Ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
dtype0*
seed2 *

seed *
T0
ž
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
Č
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
ē
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape
:@@*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
¯
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
h
dense_1/MatMulMatMul
dense/Tanhdense_1/kernel/read*
T0*
transpose_a( *
transpose_b( 
-
dense_1/TanhTanhdense_1/MatMul*
T0

/dense_2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"   @   *
dtype0
}
-dense_2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_2/kernel*
valueB
 *ôåž*
dtype0
}
-dense_2/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_2/kernel*
valueB
 *ôå>*
dtype0
Ë
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*!
_class
loc:@dense_2/kernel
ž
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel
Č
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel
ē
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape
:@*
shared_name 
¯
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
c
dense_2/MatMulMatMulstatedense_2/kernel/read*
T0*
transpose_a( *
transpose_b( 
-
dense_2/TanhTanhdense_2/MatMul*
T0

/dense_3/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"@   @   *
dtype0
}
-dense_3/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_3/kernel*
valueB
 *×ŗ]ž*
dtype0
}
-dense_3/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_3/kernel*
valueB
 *×ŗ]>*
dtype0
Ë
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_3/kernel*
dtype0*
seed2 *

seed 
ž
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel
Č
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel
ē
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
	container *
shape
:@@*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0
¯
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
j
dense_3/MatMulMatMuldense_2/Tanhdense_3/kernel/read*
T0*
transpose_a( *
transpose_b( 
-
dense_3/TanhTanhdense_3/MatMul*
T0
5

batch_sizePlaceholder*
dtype0*
shape:

1dense_4/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_4/kernel*
valueB"@      *
dtype0

0dense_4/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0

2dense_4/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_4/kernel*
valueB
 *i<*
dtype0
Ķ
;dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_4/kernel/Initializer/truncated_normal/shape*
seed2 *

seed *
T0*!
_class
loc:@dense_4/kernel*
dtype0
Ķ
/dense_4/kernel/Initializer/truncated_normal/mulMul;dense_4/kernel/Initializer/truncated_normal/TruncatedNormal2dense_4/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_4/kernel
Á
+dense_4/kernel/Initializer/truncated_normalAdd/dense_4/kernel/Initializer/truncated_normal/mul0dense_4/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_4/kernel

dense_4/kernel
VariableV2*
	container *
shape
:@*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0
ą
dense_4/kernel/AssignAssigndense_4/kernel+dense_4/kernel/Initializer/truncated_normal*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
[
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel
j
dense_4/MatMulMatMuldense_1/Tanhdense_4/kernel/read*
T0*
transpose_a( *
transpose_b( 

3log_sigma_squared/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0
|
)log_sigma_squared/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
Ė
#log_sigma_squared/Initializer/zerosFill3log_sigma_squared/Initializer/zeros/shape_as_tensor)log_sigma_squared/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared
VariableV2*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:
˛
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
d
log_sigma_squared/readIdentitylog_sigma_squared*
T0*$
_class
loc:@log_sigma_squared
+
ExpExplog_sigma_squared/read*
T0
A
epsilonPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

SqrtSqrtExp*
T0
"
mulMulSqrtepsilon*
T0
*
add_1Adddense_4/MatMulmul*
T0
"
actionIdentityadd_1*
T0
-
StopGradientStopGradientaction*
T0
1
subSubStopGradientdense_4/MatMul*
T0
2
Pow/yConst*
valueB
 *   @*
dtype0

PowPowsubPow/y*
T0
4
mul_1/xConst*
dtype0*
valueB
 *  ŋ
#
mul_1Mulmul_1/xPow*
T0
4
mul_2/xConst*
valueB
 *   @*
dtype0
#
mul_2Mulmul_2/xExp*
T0
)
truedivRealDivmul_1mul_2*
T0

Exp_1Exptruediv*
T0
4
mul_3/xConst*
valueB
 *   @*
dtype0
#
mul_3Mulmul_3/xExp*
T0
4
mul_4/yConst*
dtype0*
valueB
 *ÛI@
%
mul_4Mulmul_3mul_4/y*
T0

Sqrt_1Sqrtmul_4*
T0
8
truediv_1/xConst*
valueB
 *  ?*
dtype0
2
	truediv_1RealDivtruediv_1/xSqrt_1*
T0
.
action_probsMulExp_1	truediv_1*
T0
4
mul_5/xConst*
valueB
 *ĀĸA*
dtype0
#
mul_5Mulmul_5/xExp*
T0

LogLogmul_5*
T0
4
mul_6/xConst*
valueB
 *   ?*
dtype0
#
mul_6Mulmul_6/xLog*
T0
3
ConstConst*
valueB: *
dtype0
>
SumSummul_6Const*
	keep_dims( *

Tidx0*
T0

/dense_5/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_5/kernel*
valueB"@      *
dtype0
}
-dense_5/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_5/kernel*
valueB
 *ž*
dtype0
}
-dense_5/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_5/kernel*
valueB
 *>*
dtype0
Ë
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_5/kernel*
dtype0*
seed2 *

seed 
ž
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
Č
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
ē
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*
dtype0*
	container *
shape
:@*
shared_name *!
_class
loc:@dense_5/kernel
¯
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
j
dense_5/MatMulMatMuldense_3/Tanhdense_5/kernel/read*
T0*
transpose_a( *
transpose_b( 
3
value_estimateIdentitydense_5/MatMul*
T0
K
old_probabilitiesPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
H
discounted_rewardsPlaceholder*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
D

advantagesPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
J
PolynomialDecay/learning_rateConst*
valueB
 *ÍĖL>*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

DstT0*

SrcT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * PCG*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *
×#<*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
4
add_2/yConst*
dtype0*
valueB
 *˙æÛ.
1
add_2Addold_probabilitiesadd_2/y*
T0
2
	truediv_2RealDivaction_probsadd_2*
T0
,
mul_7Mul	truediv_2
advantages*
T0
4
sub_1/xConst*
valueB
 *  ?*
dtype0
/
sub_1Subsub_1/xPolynomialDecay*
T0
4
add_3/xConst*
valueB
 *  ?*
dtype0
/
add_3Addadd_3/xPolynomialDecay*
T0
;
clip_by_value/MinimumMinimum	truediv_2add_3*
T0
?
clip_by_valueMaximumclip_by_value/Minimumsub_1*
T0
0
mul_8Mulclip_by_value
advantages*
T0
)
MinimumMinimummul_7mul_8*
T0
<
Const_1Const*
valueB"       *
dtype0
D
MeanMeanMinimumConst_1*
	keep_dims( *

Tidx0*
T0

NegNegMean*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
[
Sum_1Sumvalue_estimateSum_1/reduction_indices*
	keep_dims( *

Tidx0*
T0
J
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_1*
T0
5
Const_2Const*
valueB: *
dtype0
P
Mean_1MeanSquaredDifferenceConst_2*
T0*
	keep_dims( *

Tidx0
L
PolynomialDecay_1/learning_rateConst*
valueB
 *    *
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_1/Cast_1/xConst*
dtype0*
valueB
 * PCG
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ŦÅ'7*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
"
add_4AddNegMean_1*
T0
0
Const_3Const*
valueB *
dtype0
B
Mean_2MeanSumConst_3*
	keep_dims( *

Tidx0*
T0
0
mul_9MulPolynomialDecay_1Mean_2*
T0
#
sub_2Subadd_4mul_9*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *ˇŅ8*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

DstT0*

SrcT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * PCG*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *˙æÛ.*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
8
gradients/sub_2_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_2_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_2_grad/Neg

-gradients/sub_2_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_2_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
ŗ
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Neg&^gradients/sub_2_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_2_grad/Neg
]
%gradients/add_4_grad/tuple/group_depsNoOp.^gradients/sub_2_grad/tuple/control_dependency
ŧ
-gradients/add_4_grad/tuple/control_dependencyIdentity-gradients/sub_2_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
ž
/gradients/add_4_grad/tuple/control_dependency_1Identity-gradients/sub_2_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_9_grad/MulMul/gradients/sub_2_grad/tuple/control_dependency_1Mean_2*
T0
n
gradients/mul_9_grad/Mul_1Mul/gradients/sub_2_grad/tuple/control_dependency_1PolynomialDecay_1*
T0
e
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Mul^gradients/mul_9_grad/Mul_1
ą
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Mul&^gradients/mul_9_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_9_grad/Mul
ˇ
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Mul_1&^gradients/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
U
gradients/Neg_grad/NegNeg-gradients/add_4_grad/tuple/control_dependency*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/add_4_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
P
gradients/Mean_1_grad/ShapeShapeSquaredDifference*
out_type0*
T0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0
R
gradients/Mean_1_grad/Shape_1ShapeSquaredDifference*
out_type0*
T0
F
gradients/Mean_1_grad/Shape_2Const*
dtype0*
valueB 
I
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *

Tidx0*
T0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
T0*
	keep_dims( *

Tidx0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
L
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB *
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_9_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
D
gradients/Mean_2_grad/ConstConst*
valueB *
dtype0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Const*

Tmultiples0*
T0
J
gradients/Mean_2_grad/Const_1Const*
valueB
 *  ?*
dtype0
l
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Const_1*
T0
V
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB"      
x
gradients/Mean_grad/ReshapeReshapegradients/Neg_grad/Neg!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0
D
gradients/Mean_grad/ShapeShapeMinimum*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
F
gradients/Mean_grad/Shape_1ShapeMinimum*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0
G
gradients/Mean_grad/Maximum/yConst*
dtype0*
value	B :
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_1*
out_type0*
T0
Ē
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
t
'gradients/SquaredDifference_grad/scalarConst^gradients/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
|
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Mean_1_grad/truediv*
T0
o
$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_1^gradients/Mean_1_grad/truediv*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
ą
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
ĩ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
Tshape0*
T0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape*
T0
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
N
 gradients/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0
}
gradients/Sum_grad/ReshapeReshapegradients/Mean_2_grad/truediv gradients/Sum_grad/Reshape/shape*
T0*
Tshape0
F
gradients/Sum_grad/ConstConst*
valueB:*
dtype0
p
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Const*
T0*

Tmultiples0
E
gradients/Minimum_grad/ShapeShapemul_7*
out_type0*
T0
G
gradients/Minimum_grad/Shape_1Shapemul_8*
T0*
out_type0
]
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_7mul_8*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Į
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
L
gradients/Sum_1_grad/ShapeShapevalue_estimate*
out_type0*
T0
r
gradients/Sum_1_grad/SizeConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
valueB *
dtype0
y
 gradients/Sum_1_grad/range/startConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B : *
dtype0
y
 gradients/Sum_1_grad/range/deltaConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
Ŋ
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
Ē
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*

index_type0
á
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
N*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
w
gradients/Sum_1_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
Ŗ
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
Tshape0*
T0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*

Tmultiples0*
T0
C
gradients/mul_6_grad/ShapeConst*
dtype0*
valueB 
J
gradients/mul_6_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
F
gradients/mul_6_grad/MulMulgradients/Sum_grad/TileLog*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/Mul*gradients/mul_6_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
L
gradients/mul_6_grad/Mul_1Mulmul_6/xgradients/Sum_grad/Tile*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/Mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
š
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
ŋ
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
G
gradients/mul_7_grad/ShapeShape	truediv_2*
T0*
out_type0
J
gradients/mul_7_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
e
gradients/mul_7_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
f
gradients/mul_7_grad/Mul_1Mul	truediv_2/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/Mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
š
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
ŋ
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
K
gradients/mul_8_grad/ShapeShapeclip_by_value*
T0*
out_type0
J
gradients/mul_8_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_8_grad/Shapegradients/mul_8_grad/Shape_1*
T0
g
gradients/mul_8_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_8_grad/SumSumgradients/mul_8_grad/Mul*gradients/mul_8_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_8_grad/ReshapeReshapegradients/mul_8_grad/Sumgradients/mul_8_grad/Shape*
T0*
Tshape0
l
gradients/mul_8_grad/Mul_1Mulclip_by_value1gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_8_grad/Sum_1Sumgradients/mul_8_grad/Mul_1,gradients/mul_8_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_8_grad/Reshape_1Reshapegradients/mul_8_grad/Sum_1gradients/mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Reshape^gradients/mul_8_grad/Reshape_1
š
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Reshape&^gradients/mul_8_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_8_grad/Reshape*
T0
ŋ
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Reshape_1&^gradients/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_8_grad/Reshape_1
m
gradients/Log_grad/Reciprocal
Reciprocalmul_50^gradients/mul_6_grad/tuple/control_dependency_1*
T0
v
gradients/Log_grad/mulMul/gradients/mul_6_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
u
$gradients/clip_by_value_grad/Shape_2Shape-gradients/mul_8_grad/tuple/control_dependency*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0*

index_type0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/Minimumsub_1*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
´
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual-gradients/mul_8_grad/tuple/control_dependency"gradients/clip_by_value_grad/zeros*
T0
ļ
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros-gradients/mul_8_grad/tuple/control_dependency*
T0
Ļ
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
Ŧ
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ų
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape*
T0
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1

$gradients/dense_5/MatMul_grad/MatMulMatMulgradients/Sum_1_grad/Tiledense_5/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_3/Tanhgradients/Sum_1_grad/Tile*
transpose_b( *
T0*
transpose_a(

.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1
Û
6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul
á
8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1
C
gradients/mul_5_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_5_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
E
gradients/mul_5_grad/MulMulgradients/Log_grad/mulExp*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/Mul*gradients/mul_5_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
Tshape0*
T0
K
gradients/mul_5_grad/Mul_1Mulmul_5/xgradients/Log_grad/mul*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/Mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
š
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
ŋ
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
W
*gradients/clip_by_value/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
­
*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
V
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqual	truediv_2add_3*
T0
ļ
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ņ
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ķ
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
ž
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
Ē
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ų
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
˙
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1

$gradients/dense_3/Tanh_grad/TanhGradTanhGraddense_3/Tanh6gradients/dense_5/MatMul_grad/tuple/control_dependency*
T0
Į
gradients/AddNAddN-gradients/mul_7_grad/tuple/control_dependency=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape*
N
N
gradients/truediv_2_grad/ShapeShapeaction_probs*
T0*
out_type0
I
 gradients/truediv_2_grad/Shape_1Shapeadd_2*
T0*
out_type0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
K
 gradients/truediv_2_grad/RealDivRealDivgradients/AddNadd_2*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
:
gradients/truediv_2_grad/NegNegaction_probs*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/Negadd_2*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1add_2*
T0
`
gradients/truediv_2_grad/mulMulgradients/AddN"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ī
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1*
T0

$gradients/dense_3/MatMul_grad/MatMulMatMul$gradients/dense_3/Tanh_grad/TanhGraddense_3/kernel/read*
T0*
transpose_a( *
transpose_b(

&gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Tanh$gradients/dense_3/Tanh_grad/TanhGrad*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
J
!gradients/action_probs_grad/ShapeShapeExp_1*
T0*
out_type0
Q
#gradients/action_probs_grad/Shape_1Const*
valueB:*
dtype0

1gradients/action_probs_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/action_probs_grad/Shape#gradients/action_probs_grad/Shape_1*
T0
m
gradients/action_probs_grad/MulMul1gradients/truediv_2_grad/tuple/control_dependency	truediv_1*
T0
 
gradients/action_probs_grad/SumSumgradients/action_probs_grad/Mul1gradients/action_probs_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum!gradients/action_probs_grad/Shape*
T0*
Tshape0
k
!gradients/action_probs_grad/Mul_1MulExp_11gradients/truediv_2_grad/tuple/control_dependency*
T0
Ļ
!gradients/action_probs_grad/Sum_1Sum!gradients/action_probs_grad/Mul_13gradients/action_probs_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

%gradients/action_probs_grad/Reshape_1Reshape!gradients/action_probs_grad/Sum_1#gradients/action_probs_grad/Shape_1*
T0*
Tshape0

,gradients/action_probs_grad/tuple/group_depsNoOp$^gradients/action_probs_grad/Reshape&^gradients/action_probs_grad/Reshape_1
Õ
4gradients/action_probs_grad/tuple/control_dependencyIdentity#gradients/action_probs_grad/Reshape-^gradients/action_probs_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/action_probs_grad/Reshape
Û
6gradients/action_probs_grad/tuple/control_dependency_1Identity%gradients/action_probs_grad/Reshape_1-^gradients/action_probs_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/action_probs_grad/Reshape_1

$gradients/dense_2/Tanh_grad/TanhGradTanhGraddense_2/Tanh6gradients/dense_3/MatMul_grad/tuple/control_dependency*
T0
e
gradients/Exp_1_grad/mulMul4gradients/action_probs_grad/tuple/control_dependencyExp_1*
T0
G
gradients/truediv_1_grad/ShapeConst*
valueB *
dtype0
N
 gradients/truediv_1_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
t
 gradients/truediv_1_grad/RealDivRealDiv6gradients/action_probs_grad/tuple/control_dependency_1Sqrt_1*
T0

gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
9
gradients/truediv_1_grad/NegNegtruediv_1/x*
T0
\
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegSqrt_1*
T0
b
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Sqrt_1*
T0

gradients/truediv_1_grad/mulMul6gradients/action_probs_grad/tuple/control_dependency_1"gradients/truediv_1_grad/RealDiv_2*
T0

gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape*
T0
Ī
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1

$gradients/dense_2/MatMul_grad/MatMulMatMul$gradients/dense_2/Tanh_grad/TanhGraddense_2/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_2/MatMul_grad/MatMul_1MatMulstate$gradients/dense_2/Tanh_grad/TanhGrad*
transpose_a(*
transpose_b( *
T0

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1*
T0
E
gradients/truediv_grad/ShapeShapemul_1*
T0*
out_type0
L
gradients/truediv_grad/Shape_1Const*
valueB:*
dtype0

,gradients/truediv_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_grad/Shapegradients/truediv_grad/Shape_1*
T0
S
gradients/truediv_grad/RealDivRealDivgradients/Exp_1_grad/mulmul_2*
T0

gradients/truediv_grad/SumSumgradients/truediv_grad/RealDiv,gradients/truediv_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
z
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
T0*
Tshape0
1
gradients/truediv_grad/NegNegmul_1*
T0
W
 gradients/truediv_grad/RealDiv_1RealDivgradients/truediv_grad/Negmul_2*
T0
]
 gradients/truediv_grad/RealDiv_2RealDiv gradients/truediv_grad/RealDiv_1mul_2*
T0
f
gradients/truediv_grad/mulMulgradients/Exp_1_grad/mul gradients/truediv_grad/RealDiv_2*
T0

gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_grad/Reshape_1Reshapegradients/truediv_grad/Sum_1gradients/truediv_grad/Shape_1*
T0*
Tshape0
s
'gradients/truediv_grad/tuple/group_depsNoOp^gradients/truediv_grad/Reshape!^gradients/truediv_grad/Reshape_1
Á
/gradients/truediv_grad/tuple/control_dependencyIdentitygradients/truediv_grad/Reshape(^gradients/truediv_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/truediv_grad/Reshape
Į
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
p
gradients/Sqrt_1_grad/SqrtGradSqrtGradSqrt_13gradients/truediv_1_grad/tuple/control_dependency_1*
T0
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
C
gradients/mul_1_grad/Shape_1ShapePow*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
^
gradients/mul_1_grad/MulMul/gradients/truediv_grad/tuple/control_dependencyPow*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
d
gradients/mul_1_grad/Mul_1Mulmul_1/x/gradients/truediv_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
š
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
ŋ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
C
gradients/mul_2_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_2_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_2_grad/Shapegradients/mul_2_grad/Shape_1*
T0
`
gradients/mul_2_grad/MulMul1gradients/truediv_grad/tuple/control_dependency_1Exp*
T0

gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
Tshape0*
T0
f
gradients/mul_2_grad/Mul_1Mulmul_2/x1gradients/truediv_grad/tuple/control_dependency_1*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
š
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
ŋ
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
H
gradients/mul_4_grad/ShapeConst*
dtype0*
valueB:
E
gradients/mul_4_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
Q
gradients/mul_4_grad/MulMulgradients/Sqrt_1_grad/SqrtGradmul_4/y*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
Q
gradients/mul_4_grad/Mul_1Mulmul_3gradients/Sqrt_1_grad/SqrtGrad*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/Mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
š
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
ŋ
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
?
gradients/Pow_grad/ShapeShapesub*
T0*
out_type0
C
gradients/Pow_grad/Shape_1Const*
valueB *
dtype0

(gradients/Pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Pow_grad/Shapegradients/Pow_grad/Shape_1*
T0
^
gradients/Pow_grad/mulMul/gradients/mul_1_grad/tuple/control_dependency_1Pow/y*
T0
E
gradients/Pow_grad/sub/yConst*
valueB
 *  ?*
dtype0
G
gradients/Pow_grad/subSubPow/ygradients/Pow_grad/sub/y*
T0
C
gradients/Pow_grad/PowPowsubgradients/Pow_grad/sub*
T0
X
gradients/Pow_grad/mul_1Mulgradients/Pow_grad/mulgradients/Pow_grad/Pow*
T0

gradients/Pow_grad/SumSumgradients/Pow_grad/mul_1(gradients/Pow_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/Pow_grad/ReshapeReshapegradients/Pow_grad/Sumgradients/Pow_grad/Shape*
T0*
Tshape0
I
gradients/Pow_grad/Greater/yConst*
valueB
 *    *
dtype0
Q
gradients/Pow_grad/GreaterGreatersubgradients/Pow_grad/Greater/y*
T0
+
gradients/Pow_grad/LogLogsub*
T0
8
gradients/Pow_grad/zeros_like	ZerosLikesub*
T0

gradients/Pow_grad/SelectSelectgradients/Pow_grad/Greatergradients/Pow_grad/Loggradients/Pow_grad/zeros_like*
T0
^
gradients/Pow_grad/mul_2Mul/gradients/mul_1_grad/tuple/control_dependency_1Pow*
T0
]
gradients/Pow_grad/mul_3Mulgradients/Pow_grad/mul_2gradients/Pow_grad/Select*
T0

gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
t
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
T0*
Tshape0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
ą
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape
ˇ
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1
C
gradients/mul_3_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_3_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
\
gradients/mul_3_grad/MulMul-gradients/mul_4_grad/tuple/control_dependencyExp*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
b
gradients/mul_3_grad/Mul_1Mulmul_3/x-gradients/mul_4_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
š
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*/
_class%
#!loc:@gradients/mul_3_grad/Reshape*
T0
ŋ
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
H
gradients/sub_grad/ShapeShapeStopGradient*
T0*
out_type0
L
gradients/sub_grad/Shape_1Shapedense_4/MatMul*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0

gradients/sub_grad/SumSum+gradients/Pow_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0

gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
ą
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
ˇ
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
Ą
$gradients/dense_4/MatMul_grad/MatMulMatMul-gradients/sub_grad/tuple/control_dependency_1dense_4/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_1/Tanh-gradients/sub_grad/tuple/control_dependency_1*
transpose_a(*
transpose_b( *
T0

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1

$gradients/dense_1/Tanh_grad/TanhGradTanhGraddense_1/Tanh6gradients/dense_4/MatMul_grad/tuple/control_dependency*
T0

$gradients/dense_1/MatMul_grad/MatMulMatMul$gradients/dense_1/Tanh_grad/TanhGraddense_1/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Tanh$gradients/dense_1/Tanh_grad/TanhGrad*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Û
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*
T0
á
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
đ
gradients/AddN_1AddN/gradients/mul_5_grad/tuple/control_dependency_1/gradients/mul_2_grad/tuple/control_dependency_1/gradients/mul_3_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1*
N
=
gradients/Exp_grad/mulMulgradients/AddN_1Exp*
T0
{
"gradients/dense/Tanh_grad/TanhGradTanhGrad
dense/Tanh6gradients/dense_1/MatMul_grad/tuple/control_dependency*
T0

"gradients/dense/MatMul_grad/MatMulMatMul"gradients/dense/Tanh_grad/TanhGraddense/kernel/read*
T0*
transpose_a( *
transpose_b(

$gradients/dense/MatMul_grad/MatMul_1MatMulstate"gradients/dense/Tanh_grad/TanhGrad*
T0*
transpose_a(*
transpose_b( 

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ķ
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ų
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *fff?*
dtype0
x
beta1_power
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
T0
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
_class
loc:@dense/kernel*
valueB
 *wž?*
dtype0
x
beta2_power
VariableV2*
_class
loc:@dense/kernel*
dtype0*
	container *
shape: *
shared_name 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"   @   *
dtype0
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
Į
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape
:@
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
T0
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"   @   *
dtype0
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
Í
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam_1
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape
:@
ŗ
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Ī
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam
VariableV2*
dtype0*
	container *
shape
:@@*
shared_name *!
_class
loc:@dense_1/kernel
ĩ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"@   @   *
dtype0
}
-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Õ
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam_1
VariableV2*
	container *
shape
:@@*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0
ģ
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*!
_class
loc:@dense_1/kernel*
T0

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"   @   *
dtype0
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Ī
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape
:@
ĩ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(*
T0
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"   @   *
dtype0
}
-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Õ
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam_1
VariableV2*
shape
:@*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container 
ģ
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"@   @   
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0
Ī
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam
VariableV2*!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape
:@@*
shared_name 
ĩ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB"@   @   
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *    
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam_1
VariableV2*!
_class
loc:@dense_3/kernel*
dtype0*
	container *
shape
:@@*
shared_name 
ģ
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel

5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"@      *
dtype0
{
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Ī
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*!
_class
loc:@dense_4/kernel*

index_type0*
T0

dense_4/kernel/Adam
VariableV2*
dtype0*
	container *
shape
:@*
shared_name *!
_class
loc:@dense_4/kernel
ĩ
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
e
dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel

7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"@      *
dtype0
}
-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Õ
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape
:@
ģ
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(
i
dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel

8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0

.log_sigma_squared/Adam/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
Û
(log_sigma_squared/Adam/Initializer/zerosFill8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensor.log_sigma_squared/Adam/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared/Adam
VariableV2*
	container *
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0
Á
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(*
T0
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*
T0*$
_class
loc:@log_sigma_squared

:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0

0log_sigma_squared/Adam_1/Initializer/zeros/ConstConst*
dtype0*$
_class
loc:@log_sigma_squared*
valueB
 *    
á
*log_sigma_squared/Adam_1/Initializer/zerosFill:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensor0log_sigma_squared/Adam_1/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared/Adam_1
VariableV2*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:
Į
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared

5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*!
_class
loc:@dense_5/kernel*
valueB"@      
{
+dense_5/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Ī
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam
VariableV2*!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape
:@*
shared_name 
ĩ
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(*
T0
e
dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel

7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"@      *
dtype0
}
-dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Õ
'dense_5/kernel/Adam_1/Initializer/zerosFill7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam_1
VariableV2*
shape
:@*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container 
ģ
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(
i
dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *wž?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĖ+2*
dtype0
Ë
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
×
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
use_nesterov( 
×
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_2/kernel
×
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_3/kernel*
use_nesterov( 
×
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_4/kernel*
use_nesterov( 
Ä
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilongradients/Exp_grad/mul*$
_class
loc:@log_sigma_squared*
use_nesterov( *
use_locking( *
T0
×
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_5/kernel*
use_nesterov( *
use_locking( 
é
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
ë

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam*
_class
loc:@dense/kernel*
T0

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
validate_shape(
ŧ
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam^Adam/Assign^Adam/Assign_1
¯
initNoOp^global_step/Assign^last_reward/Assign^dense/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^dense_4/kernel/Assign^log_sigma_squared/Assign^dense_5/kernel/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
Ą
save/SaveV2/tensor_namesConst*đ
valueæBãBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1*
dtype0
y
save/SaveV2/shape_and_slicesConst*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ũ
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_steplast_rewardlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1*'
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
ŗ
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*đ
valueæBãBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*'
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_2Assigndense/kernelsave/RestoreV2:2*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel

save/Assign_3Assigndense/kernel/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_4Assigndense/kernel/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_5Assigndense_1/kernelsave/RestoreV2:5*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_1/kernel

save/Assign_6Assigndense_1/kernel/Adamsave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_7Assigndense_1/kernel/Adam_1save/RestoreV2:7*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(

save/Assign_8Assigndense_2/kernelsave/RestoreV2:8*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_9Assigndense_2/kernel/Adamsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_10Assigndense_2/kernel/Adam_1save/RestoreV2:10*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
use_locking(

save/Assign_11Assigndense_3/kernelsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_12Assigndense_3/kernel/Adamsave/RestoreV2:12*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(

save/Assign_13Assigndense_3/kernel/Adam_1save/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_14Assigndense_4/kernelsave/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_15Assigndense_4/kernel/Adamsave/RestoreV2:15*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_16Assigndense_4/kernel/Adam_1save/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_17Assigndense_5/kernelsave/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_18Assigndense_5/kernel/Adamsave/RestoreV2:18*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_5/kernel

save/Assign_19Assigndense_5/kernel/Adam_1save/RestoreV2:19*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_20Assignglobal_stepsave/RestoreV2:20*
validate_shape(*
use_locking(*
T0*
_class
loc:@global_step

save/Assign_21Assignlast_rewardsave/RestoreV2:21*
T0*
_class
loc:@last_reward*
validate_shape(*
use_locking(

save/Assign_22Assignlog_sigma_squaredsave/RestoreV2:22*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(

save/Assign_23Assignlog_sigma_squared/Adamsave/RestoreV2:23*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_24Assignlog_sigma_squared/Adam_1save/RestoreV2:24*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(
ĩ
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24
ŧ
Const_4Const*
valueBB	max_stepsB50000.0Brun_pathBboatsimulator-32Benv_nameBboatsimulatorBcurriculum_fileBNoneBgammaB0.99BlambdB0.95Btime_horizonB2048BbetaB0.001B	num_epochB5BepsilonB0.2B
buffe_sizeB2048Blearning_rateB0.0001Bhidden_unitsB64B
batch_sizeB512*
dtype0
K
Hyperparameters/tagConst*
dtype0* 
valueB BHyperparameters
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_4+Hyperparameters/serialized_summary_metadata*
T0"