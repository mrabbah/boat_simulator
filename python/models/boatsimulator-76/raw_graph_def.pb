
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
global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
_class
loc:@global_step*
validate_shape(*
use_locking(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
Add/yConst*
value	B :*
dtype0
,
AddAddglobal_step/readAdd/y*
T0
t
AssignAssignglobal_stepAdd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
5

batch_sizePlaceholder*
shape:*
dtype0
:
sequence_lengthPlaceholder*
shape:*
dtype0
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
shared_name *
dtype0*
	container *
shape: 
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
L
vector_observationPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ<

/dense/kernel/Initializer/truncated_normal/shapeConst*
_class
loc:@dense/kernel*
valueB"<      *
dtype0
|
.dense/kernel/Initializer/truncated_normal/meanConst*
_class
loc:@dense/kernel*
valueB
 *    *
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
_class
loc:@dense/kernel*
valueB
 *º>*
dtype0
Ï
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
seed2*
seed´#
Ë
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
_class
loc:@dense/kernel*
T0

dense/kernel
VariableV2*
	container *
shape:	<*
shared_name *
_class
loc:@dense/kernel*
dtype0
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
z
,dense/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
n
"dense/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense/bias*
valueB
 *    
°
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0
z

dense/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
l
dense/MatMulMatMulvector_observationdense/kernel/read*
transpose_a( *
transpose_b( *
T0
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC
*

dense/TanhTanhdense/BiasAdd*
T0

1dense_1/kernel/Initializer/truncated_normal/shapeConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB"      

0dense_1/kernel/Initializer/truncated_normal/meanConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *    

2dense_1/kernel/Initializer/truncated_normal/stddevConst*
dtype0*!
_class
loc:@dense_1/kernel*
valueB
 *ÐdÎ=
Õ
;dense_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_1/kernel/Initializer/truncated_normal/shape*
seed´#*
T0*!
_class
loc:@dense_1/kernel*
dtype0*
seed2%
Ó
/dense_1/kernel/Initializer/truncated_normal/mulMul;dense_1/kernel/Initializer/truncated_normal/TruncatedNormal2dense_1/kernel/Initializer/truncated_normal/stddev*!
_class
loc:@dense_1/kernel*
T0
Á
+dense_1/kernel/Initializer/truncated_normalAdd/dense_1/kernel/Initializer/truncated_normal/mul0dense_1/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape:
*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
±
dense_1/kernel/AssignAssigndense_1/kernel+dense_1/kernel/Initializer/truncated_normal*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(
[
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0
~
.dense_1/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
r
$dense_1/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_1/bias*
valueB
 *    
¸
dense_1/bias/Initializer/zerosFill.dense_1/bias/Initializer/zeros/shape_as_tensor$dense_1/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0
~
dense_1/bias
VariableV2*
shared_name *
_class
loc:@dense_1/bias*
dtype0*
	container *
shape:

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
U
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias
h
dense_1/MatMulMatMul
dense/Tanhdense_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
]
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC
.
dense_1/TanhTanhdense_1/BiasAdd*
T0

1dense_2/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_2/kernel*
valueB"<      *
dtype0

0dense_2/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0

2dense_2/kernel/Initializer/truncated_normal/stddevConst*!
_class
loc:@dense_2/kernel*
valueB
 *º>*
dtype0
Õ
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*
T0*!
_class
loc:@dense_2/kernel*
dtype0*
seed27*
seed´#
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Á
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	<
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
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
~
.dense_2/bias/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
r
$dense_2/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
¸
dense_2/bias/Initializer/zerosFill.dense_2/bias/Initializer/zeros/shape_as_tensor$dense_2/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_2/bias*

index_type0
~
dense_2/bias
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_2/bias

dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias
U
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias
p
dense_2/MatMulMatMulvector_observationdense_2/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC
.
dense_2/TanhTanhdense_2/BiasAdd*
T0

1dense_3/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0

0dense_3/kernel/Initializer/truncated_normal/meanConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0

2dense_3/kernel/Initializer/truncated_normal/stddevConst*
dtype0*!
_class
loc:@dense_3/kernel*
valueB
 *ÐdÎ=
Õ
;dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_3/kernel/Initializer/truncated_normal/shape*
seed´#*
T0*!
_class
loc:@dense_3/kernel*
dtype0*
seed2I
Ó
/dense_3/kernel/Initializer/truncated_normal/mulMul;dense_3/kernel/Initializer/truncated_normal/TruncatedNormal2dense_3/kernel/Initializer/truncated_normal/stddev*!
_class
loc:@dense_3/kernel*
T0
Á
+dense_3/kernel/Initializer/truncated_normalAdd/dense_3/kernel/Initializer/truncated_normal/mul0dense_3/kernel/Initializer/truncated_normal/mean*!
_class
loc:@dense_3/kernel*
T0

dense_3/kernel
VariableV2*
	container *
shape:
*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0
±
dense_3/kernel/AssignAssigndense_3/kernel+dense_3/kernel/Initializer/truncated_normal*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
~
.dense_3/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_3/bias*
valueB:
r
$dense_3/bias/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_3/bias*
valueB
 *    
¸
dense_3/bias/Initializer/zerosFill.dense_3/bias/Initializer/zeros/shape_as_tensor$dense_3/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0
~
dense_3/bias
VariableV2*
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:*
shared_name 

dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(
U
dense_3/bias/readIdentitydense_3/bias*
_class
loc:@dense_3/bias*
T0
j
dense_3/MatMulMatMuldense_2/Tanhdense_3/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC
.
dense_3/TanhTanhdense_3/BiasAdd*
T0

1dense_4/kernel/Initializer/truncated_normal/shapeConst*!
_class
loc:@dense_4/kernel*
valueB"      *
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
 *s%<*
dtype0
Õ
;dense_4/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_4/kernel/Initializer/truncated_normal/shape*
T0*!
_class
loc:@dense_4/kernel*
dtype0*
seed2[*
seed´#
Ó
/dense_4/kernel/Initializer/truncated_normal/mulMul;dense_4/kernel/Initializer/truncated_normal/TruncatedNormal2dense_4/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_4/kernel
Á
+dense_4/kernel/Initializer/truncated_normalAdd/dense_4/kernel/Initializer/truncated_normal/mul0dense_4/kernel/Initializer/truncated_normal/mean*!
_class
loc:@dense_4/kernel*
T0

dense_4/kernel
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container 
±
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
dense_4/MatMulMatMuldense_1/Tanhdense_4/kernel/read*
transpose_a( *
transpose_b( *
T0

3log_sigma_squared/Initializer/zeros/shape_as_tensorConst*
dtype0*$
_class
loc:@log_sigma_squared*
valueB:
|
)log_sigma_squared/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
Ì
#log_sigma_squared/Initializer/zerosFill3log_sigma_squared/Initializer/zeros/shape_as_tensor)log_sigma_squared/Initializer/zeros/Const*
T0*$
_class
loc:@log_sigma_squared*

index_type0

log_sigma_squared
VariableV2*$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:*
shared_name 
²
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
d
log_sigma_squared/readIdentitylog_sigma_squared*$
_class
loc:@log_sigma_squared*
T0
+
ExpExplog_sigma_squared/read*
T0
7
ShapeShapedense_4/MatMul*
T0*
out_type0
?
random_normal/meanConst*
valueB
 *    *
dtype0
A
random_normal/stddevConst*
valueB
 *  ?*
dtype0
r
"random_normal/RandomStandardNormalRandomStandardNormalShape*
seed2l*
seed´#*
T0*
dtype0
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0

SqrtSqrtExp*
T0
(
mulMulSqrtrandom_normal*
T0
(
addAdddense_4/MatMulmul*
T0
 
actionIdentityadd*
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
mul_1/xConst*
valueB
 *  ¿*
dtype0
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
mul_4/yConst*
valueB
 *ÛI@*
dtype0
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
 *À¢A*
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
ConstConst*
dtype0*
valueB: 
@
MeanMeanmul_6Const*
T0*
	keep_dims( *

Tidx0

/dense_5/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
}
-dense_5/kernel/Initializer/random_uniform/minConst*!
_class
loc:@dense_5/kernel*
valueB
 *n×\¾*
dtype0
}
-dense_5/kernel/Initializer/random_uniform/maxConst*!
_class
loc:@dense_5/kernel*
valueB
 *n×\>*
dtype0
Î
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
seed´#*
T0*!
_class
loc:@dense_5/kernel*
dtype0*
seed2
¾
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel
È
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel
º
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel

dense_5/kernel
VariableV2*!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:	*
shared_name 
¯
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(
[
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel
}
.dense_5/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_5/bias*
valueB:
r
$dense_5/bias/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
¸
dense_5/bias/Initializer/zerosFill.dense_5/bias/Initializer/zeros/shape_as_tensor$dense_5/bias/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0
}
dense_5/bias
VariableV2*
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:*
shared_name 

dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
_class
loc:@dense_5/bias*
validate_shape(*
use_locking(*
T0
U
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias
j
dense_5/MatMulMatMuldense_3/Tanhdense_5/kernel/read*
T0*
transpose_a( *
transpose_b( 
]
dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC
4
value_estimateIdentitydense_5/BiasAdd*
T0
K
old_probabilitiesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
+
IdentityIdentityaction_probs*
T0
2

Identity_1Identityold_probabilities*
T0
D
Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
H
ReshapeReshapevalue_estimateReshape/shape*
T0*
Tshape0
:
ones_like/ShapeShapeReshape*
out_type0*
T0
<
ones_like/ConstConst*
valueB
 *  ?*
dtype0
N
	ones_likeFillones_like/Shapeones_like/Const*
T0*

index_type0
&
mul_7Mul	ones_likeMean*
T0
H
discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
D

advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * $ôH*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÿæÛ.*
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
I
old_value_estimatesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
;
masksPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
L
PolynomialDecay_1/learning_rateConst*
dtype0*
valueB
 *ÍÌL>
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * $ôH*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
dtype0*
valueB
 *ÍÌÌ=
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
L
PolynomialDecay_2/learning_rateConst*
valueB
 *
×#<*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * $ôH*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
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
4
Equal/yConst*
valueB
 *  ?*
dtype0
'
EqualEqualmasksEqual/y*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
W
SumSumvalue_estimateSum/reduction_indices*
T0*
	keep_dims( *

Tidx0
/
sub_1SubSumold_value_estimates*
T0
&
NegNegPolynomialDecay_1*
T0
C
clip_by_value/MinimumMinimumsub_1PolynomialDecay_1*
T0
=
clip_by_valueMaximumclip_by_value/MinimumNeg*
T0
9
add_1Addold_value_estimatesclip_by_value*
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
L
SquaredDifference_1SquaredDifferencediscounted_rewardsadd_1*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
=
boolean_mask/ShapeShapeMaximum*
T0*
out_type0
N
 boolean_mask/strided_slice/stackConst*
valueB: *
dtype0
P
"boolean_mask/strided_slice/stack_1Const*
valueB:*
dtype0
P
"boolean_mask/strided_slice/stack_2Const*
valueB:*
dtype0
¢
boolean_mask/strided_sliceStridedSliceboolean_mask/Shape boolean_mask/strided_slice/stack"boolean_mask/strided_slice/stack_1"boolean_mask/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0*
shrink_axis_mask 
Q
#boolean_mask/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask/ProdProdboolean_mask/strided_slice#boolean_mask/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0
?
boolean_mask/Shape_1ShapeMaximum*
T0*
out_type0
P
"boolean_mask/strided_slice_1/stackConst*
valueB: *
dtype0
R
$boolean_mask/strided_slice_1/stack_1Const*
valueB: *
dtype0
R
$boolean_mask/strided_slice_1/stack_2Const*
valueB:*
dtype0
¬
boolean_mask/strided_slice_1StridedSliceboolean_mask/Shape_1"boolean_mask/strided_slice_1/stack$boolean_mask/strided_slice_1/stack_1$boolean_mask/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
?
boolean_mask/Shape_2ShapeMaximum*
T0*
out_type0
P
"boolean_mask/strided_slice_2/stackConst*
valueB:*
dtype0
R
$boolean_mask/strided_slice_2/stack_1Const*
valueB: *
dtype0
R
$boolean_mask/strided_slice_2/stack_2Const*
valueB:*
dtype0
¬
boolean_mask/strided_slice_2StridedSliceboolean_mask/Shape_2"boolean_mask/strided_slice_2/stack$boolean_mask/strided_slice_2/stack_1$boolean_mask/strided_slice_2/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask 
U
boolean_mask/concat/values_1Packboolean_mask/Prod*
N*
T0*

axis 
B
boolean_mask/concat/axisConst*
value	B : *
dtype0
±
boolean_mask/concatConcatV2boolean_mask/strided_slice_1boolean_mask/concat/values_1boolean_mask/strided_slice_2boolean_mask/concat/axis*
T0*
N*

Tidx0
T
boolean_mask/ReshapeReshapeMaximumboolean_mask/concat*
T0*
Tshape0
S
boolean_mask/Reshape_1/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
]
boolean_mask/Reshape_1ReshapeEqualboolean_mask/Reshape_1/shape*
T0
*
Tshape0
<
boolean_mask/WhereWhereboolean_mask/Reshape_1*
T0

S
boolean_mask/SqueezeSqueezeboolean_mask/Where*
squeeze_dims
*
T0	

boolean_mask/GatherGatherboolean_mask/Reshapeboolean_mask/Squeeze*
Tindices0	*
validate_indices(*
Tparams0
5
Const_1Const*
valueB: *
dtype0
R
Mean_1Meanboolean_mask/GatherConst_1*
	keep_dims( *

Tidx0*
T0
4
add_2/yConst*
dtype0*
valueB
 *ÿæÛ.
*
add_2Add
Identity_1add_2/y*
T0
.
	truediv_2RealDivIdentityadd_2*
T0
,
mul_8Mul	truediv_2
advantages*
T0
4
sub_2/xConst*
valueB
 *  ?*
dtype0
1
sub_2Subsub_2/xPolynomialDecay_1*
T0
4
add_3/xConst*
valueB
 *  ?*
dtype0
1
add_3Addadd_3/xPolynomialDecay_1*
T0
=
clip_by_value_1/MinimumMinimum	truediv_2add_3*
T0
C
clip_by_value_1Maximumclip_by_value_1/Minimumsub_2*
T0
2
mul_9Mulclip_by_value_1
advantages*
T0
)
MinimumMinimummul_8mul_9*
T0
?
boolean_mask_1/ShapeShapeMinimum*
T0*
out_type0
P
"boolean_mask_1/strided_slice/stackConst*
valueB: *
dtype0
R
$boolean_mask_1/strided_slice/stack_1Const*
dtype0*
valueB:
R
$boolean_mask_1/strided_slice/stack_2Const*
dtype0*
valueB:
¬
boolean_mask_1/strided_sliceStridedSliceboolean_mask_1/Shape"boolean_mask_1/strided_slice/stack$boolean_mask_1/strided_slice/stack_1$boolean_mask_1/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
S
%boolean_mask_1/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask_1/ProdProdboolean_mask_1/strided_slice%boolean_mask_1/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0
A
boolean_mask_1/Shape_1ShapeMinimum*
T0*
out_type0
R
$boolean_mask_1/strided_slice_1/stackConst*
valueB: *
dtype0
T
&boolean_mask_1/strided_slice_1/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_1/strided_slice_1/stack_2Const*
valueB:*
dtype0
¶
boolean_mask_1/strided_slice_1StridedSliceboolean_mask_1/Shape_1$boolean_mask_1/strided_slice_1/stack&boolean_mask_1/strided_slice_1/stack_1&boolean_mask_1/strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
A
boolean_mask_1/Shape_2ShapeMinimum*
T0*
out_type0
R
$boolean_mask_1/strided_slice_2/stackConst*
dtype0*
valueB:
T
&boolean_mask_1/strided_slice_2/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_1/strided_slice_2/stack_2Const*
valueB:*
dtype0
¶
boolean_mask_1/strided_slice_2StridedSliceboolean_mask_1/Shape_2$boolean_mask_1/strided_slice_2/stack&boolean_mask_1/strided_slice_2/stack_1&boolean_mask_1/strided_slice_2/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
Y
boolean_mask_1/concat/values_1Packboolean_mask_1/Prod*

axis *
N*
T0
D
boolean_mask_1/concat/axisConst*
value	B : *
dtype0
»
boolean_mask_1/concatConcatV2boolean_mask_1/strided_slice_1boolean_mask_1/concat/values_1boolean_mask_1/strided_slice_2boolean_mask_1/concat/axis*

Tidx0*
T0*
N
X
boolean_mask_1/ReshapeReshapeMinimumboolean_mask_1/concat*
T0*
Tshape0
U
boolean_mask_1/Reshape_1/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
a
boolean_mask_1/Reshape_1ReshapeEqualboolean_mask_1/Reshape_1/shape*
Tshape0*
T0

@
boolean_mask_1/WhereWhereboolean_mask_1/Reshape_1*
T0

W
boolean_mask_1/SqueezeSqueezeboolean_mask_1/Where*
squeeze_dims
*
T0	

boolean_mask_1/GatherGatherboolean_mask_1/Reshapeboolean_mask_1/Squeeze*
Tindices0	*
validate_indices(*
Tparams0
<
Const_2Const*
dtype0*
valueB"       
T
Mean_2Meanboolean_mask_1/GatherConst_2*
	keep_dims( *

Tidx0*
T0

Neg_1NegMean_2*
T0
5
mul_10/xConst*
valueB
 *   ?*
dtype0
(
mul_10Mulmul_10/xMean_1*
T0
$
add_4AddNeg_1mul_10*
T0
=
boolean_mask_2/ShapeShapemul_7*
T0*
out_type0
P
"boolean_mask_2/strided_slice/stackConst*
valueB: *
dtype0
R
$boolean_mask_2/strided_slice/stack_1Const*
valueB:*
dtype0
R
$boolean_mask_2/strided_slice/stack_2Const*
valueB:*
dtype0
¬
boolean_mask_2/strided_sliceStridedSliceboolean_mask_2/Shape"boolean_mask_2/strided_slice/stack$boolean_mask_2/strided_slice/stack_1$boolean_mask_2/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0
S
%boolean_mask_2/Prod/reduction_indicesConst*
valueB: *
dtype0

boolean_mask_2/ProdProdboolean_mask_2/strided_slice%boolean_mask_2/Prod/reduction_indices*
	keep_dims( *

Tidx0*
T0
?
boolean_mask_2/Shape_1Shapemul_7*
T0*
out_type0
R
$boolean_mask_2/strided_slice_1/stackConst*
valueB: *
dtype0
T
&boolean_mask_2/strided_slice_1/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_2/strided_slice_1/stack_2Const*
valueB:*
dtype0
¶
boolean_mask_2/strided_slice_1StridedSliceboolean_mask_2/Shape_1$boolean_mask_2/strided_slice_1/stack&boolean_mask_2/strided_slice_1/stack_1&boolean_mask_2/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 
?
boolean_mask_2/Shape_2Shapemul_7*
T0*
out_type0
R
$boolean_mask_2/strided_slice_2/stackConst*
valueB:*
dtype0
T
&boolean_mask_2/strided_slice_2/stack_1Const*
valueB: *
dtype0
T
&boolean_mask_2/strided_slice_2/stack_2Const*
dtype0*
valueB:
¶
boolean_mask_2/strided_slice_2StridedSliceboolean_mask_2/Shape_2$boolean_mask_2/strided_slice_2/stack&boolean_mask_2/strided_slice_2/stack_1&boolean_mask_2/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*
shrink_axis_mask 
Y
boolean_mask_2/concat/values_1Packboolean_mask_2/Prod*
T0*

axis *
N
D
boolean_mask_2/concat/axisConst*
value	B : *
dtype0
»
boolean_mask_2/concatConcatV2boolean_mask_2/strided_slice_1boolean_mask_2/concat/values_1boolean_mask_2/strided_slice_2boolean_mask_2/concat/axis*
T0*
N*

Tidx0
V
boolean_mask_2/ReshapeReshapemul_7boolean_mask_2/concat*
T0*
Tshape0
U
boolean_mask_2/Reshape_1/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
a
boolean_mask_2/Reshape_1ReshapeEqualboolean_mask_2/Reshape_1/shape*
Tshape0*
T0

@
boolean_mask_2/WhereWhereboolean_mask_2/Reshape_1*
T0

W
boolean_mask_2/SqueezeSqueezeboolean_mask_2/Where*
squeeze_dims
*
T0	

boolean_mask_2/GatherGatherboolean_mask_2/Reshapeboolean_mask_2/Squeeze*
Tindices0	*
validate_indices(*
Tparams0
5
Const_3Const*
valueB: *
dtype0
T
Mean_3Meanboolean_mask_2/GatherConst_3*
	keep_dims( *

Tidx0*
T0
1
mul_11MulPolynomialDecay_2Mean_3*
T0
$
sub_3Subadd_4mul_11*
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
gradients/sub_3_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_3_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_3_grad/Neg

-gradients/sub_3_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_3_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Neg&^gradients/sub_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_3_grad/Neg
]
%gradients/add_4_grad/tuple/group_depsNoOp.^gradients/sub_3_grad/tuple/control_dependency
¼
-gradients/add_4_grad/tuple/control_dependencyIdentity-gradients/sub_3_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
¾
/gradients/add_4_grad/tuple/control_dependency_1Identity-gradients/sub_3_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_11_grad/MulMul/gradients/sub_3_grad/tuple/control_dependency_1Mean_3*
T0
o
gradients/mul_11_grad/Mul_1Mul/gradients/sub_3_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
h
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Mul^gradients/mul_11_grad/Mul_1
µ
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Mul'^gradients/mul_11_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_11_grad/Mul
»
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Mul_1'^gradients/mul_11_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_11_grad/Mul_1
W
gradients/Neg_1_grad/NegNeg-gradients/add_4_grad/tuple/control_dependency*
T0
b
gradients/mul_10_grad/MulMul/gradients/add_4_grad/tuple/control_dependency_1Mean_1*
T0
f
gradients/mul_10_grad/Mul_1Mul/gradients/add_4_grad/tuple/control_dependency_1mul_10/x*
T0
h
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Mul^gradients/mul_10_grad/Mul_1
µ
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Mul'^gradients/mul_10_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/mul_10_grad/Mul
»
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Mul_1'^gradients/mul_10_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients/mul_10_grad/Mul_1
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape0gradients/mul_11_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
T
gradients/Mean_3_grad/ShapeShapeboolean_mask_2/Gather*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
V
gradients/Mean_3_grad/Shape_1Shapeboolean_mask_2/Gather*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
dtype0*
valueB 
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
	keep_dims( *

Tidx0*
T0
K
gradients/Mean_3_grad/Const_1Const*
dtype0*
valueB: 

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
Z
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
X
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_2_grad/ReshapeReshapegradients/Neg_1_grad/Neg#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
T
gradients/Mean_2_grad/ShapeShapeboolean_mask_1/Gather*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
V
gradients/Mean_2_grad/Shape_1Shapeboolean_mask_1/Gather*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
	keep_dims( *

Tidx0*
T0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape0gradients/mul_10_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
R
gradients/Mean_1_grad/ShapeShapeboolean_mask/Gather*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0
T
gradients/Mean_1_grad/Shape_1Shapeboolean_mask/Gather*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
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
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0
I
gradients/Mean_1_grad/Maximum/yConst*
dtype0*
value	B :
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

DstT0*

SrcT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0

*gradients/boolean_mask_2/Gather_grad/ShapeShapeboolean_mask_2/Reshape*
T0*)
_class
loc:@boolean_mask_2/Reshape*
out_type0	
£
,gradients/boolean_mask_2/Gather_grad/ToInt32Cast*gradients/boolean_mask_2/Gather_grad/Shape*

SrcT0	*)
_class
loc:@boolean_mask_2/Reshape*

DstT0
b
)gradients/boolean_mask_2/Gather_grad/SizeSizeboolean_mask_2/Squeeze*
T0	*
out_type0
]
3gradients/boolean_mask_2/Gather_grad/ExpandDims/dimConst*
dtype0*
value	B : 
²
/gradients/boolean_mask_2/Gather_grad/ExpandDims
ExpandDims)gradients/boolean_mask_2/Gather_grad/Size3gradients/boolean_mask_2/Gather_grad/ExpandDims/dim*

Tdim0*
T0
f
8gradients/boolean_mask_2/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
h
:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
h
:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

2gradients/boolean_mask_2/Gather_grad/strided_sliceStridedSlice,gradients/boolean_mask_2/Gather_grad/ToInt328gradients/boolean_mask_2/Gather_grad/strided_slice/stack:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_1:gradients/boolean_mask_2/Gather_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
Z
0gradients/boolean_mask_2/Gather_grad/concat/axisConst*
value	B : *
dtype0
ì
+gradients/boolean_mask_2/Gather_grad/concatConcatV2/gradients/boolean_mask_2/Gather_grad/ExpandDims2gradients/boolean_mask_2/Gather_grad/strided_slice0gradients/boolean_mask_2/Gather_grad/concat/axis*

Tidx0*
T0*
N

,gradients/boolean_mask_2/Gather_grad/ReshapeReshapegradients/Mean_3_grad/truediv+gradients/boolean_mask_2/Gather_grad/concat*
T0*
Tshape0

.gradients/boolean_mask_2/Gather_grad/Reshape_1Reshapeboolean_mask_2/Squeeze/gradients/boolean_mask_2/Gather_grad/ExpandDims*
T0	*
Tshape0

*gradients/boolean_mask_1/Gather_grad/ShapeShapeboolean_mask_1/Reshape*
T0*)
_class
loc:@boolean_mask_1/Reshape*
out_type0	
£
,gradients/boolean_mask_1/Gather_grad/ToInt32Cast*gradients/boolean_mask_1/Gather_grad/Shape*

DstT0*

SrcT0	*)
_class
loc:@boolean_mask_1/Reshape
b
)gradients/boolean_mask_1/Gather_grad/SizeSizeboolean_mask_1/Squeeze*
T0	*
out_type0
]
3gradients/boolean_mask_1/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0
²
/gradients/boolean_mask_1/Gather_grad/ExpandDims
ExpandDims)gradients/boolean_mask_1/Gather_grad/Size3gradients/boolean_mask_1/Gather_grad/ExpandDims/dim*

Tdim0*
T0
f
8gradients/boolean_mask_1/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
h
:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
h
:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

2gradients/boolean_mask_1/Gather_grad/strided_sliceStridedSlice,gradients/boolean_mask_1/Gather_grad/ToInt328gradients/boolean_mask_1/Gather_grad/strided_slice/stack:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_1:gradients/boolean_mask_1/Gather_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0
Z
0gradients/boolean_mask_1/Gather_grad/concat/axisConst*
value	B : *
dtype0
ì
+gradients/boolean_mask_1/Gather_grad/concatConcatV2/gradients/boolean_mask_1/Gather_grad/ExpandDims2gradients/boolean_mask_1/Gather_grad/strided_slice0gradients/boolean_mask_1/Gather_grad/concat/axis*
N*

Tidx0*
T0

,gradients/boolean_mask_1/Gather_grad/ReshapeReshapegradients/Mean_2_grad/truediv+gradients/boolean_mask_1/Gather_grad/concat*
T0*
Tshape0

.gradients/boolean_mask_1/Gather_grad/Reshape_1Reshapeboolean_mask_1/Squeeze/gradients/boolean_mask_1/Gather_grad/ExpandDims*
T0	*
Tshape0

(gradients/boolean_mask/Gather_grad/ShapeShapeboolean_mask/Reshape*
T0*'
_class
loc:@boolean_mask/Reshape*
out_type0	

*gradients/boolean_mask/Gather_grad/ToInt32Cast(gradients/boolean_mask/Gather_grad/Shape*

DstT0*

SrcT0	*'
_class
loc:@boolean_mask/Reshape
^
'gradients/boolean_mask/Gather_grad/SizeSizeboolean_mask/Squeeze*
T0	*
out_type0
[
1gradients/boolean_mask/Gather_grad/ExpandDims/dimConst*
value	B : *
dtype0
¬
-gradients/boolean_mask/Gather_grad/ExpandDims
ExpandDims'gradients/boolean_mask/Gather_grad/Size1gradients/boolean_mask/Gather_grad/ExpandDims/dim*

Tdim0*
T0
d
6gradients/boolean_mask/Gather_grad/strided_slice/stackConst*
valueB:*
dtype0
f
8gradients/boolean_mask/Gather_grad/strided_slice/stack_1Const*
valueB: *
dtype0
f
8gradients/boolean_mask/Gather_grad/strided_slice/stack_2Const*
valueB:*
dtype0

0gradients/boolean_mask/Gather_grad/strided_sliceStridedSlice*gradients/boolean_mask/Gather_grad/ToInt326gradients/boolean_mask/Gather_grad/strided_slice/stack8gradients/boolean_mask/Gather_grad/strided_slice/stack_18gradients/boolean_mask/Gather_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask
X
.gradients/boolean_mask/Gather_grad/concat/axisConst*
value	B : *
dtype0
ä
)gradients/boolean_mask/Gather_grad/concatConcatV2-gradients/boolean_mask/Gather_grad/ExpandDims0gradients/boolean_mask/Gather_grad/strided_slice.gradients/boolean_mask/Gather_grad/concat/axis*

Tidx0*
T0*
N

*gradients/boolean_mask/Gather_grad/ReshapeReshapegradients/Mean_1_grad/truediv)gradients/boolean_mask/Gather_grad/concat*
T0*
Tshape0

,gradients/boolean_mask/Gather_grad/Reshape_1Reshapeboolean_mask/Squeeze-gradients/boolean_mask/Gather_grad/ExpandDims*
T0	*
Tshape0
T
+gradients/boolean_mask_2/Reshape_grad/ShapeShapemul_7*
T0*
out_type0
o
Agradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0
q
Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
q
Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
À
;gradients/boolean_mask_2/Reshape_grad/Reshape/strided_sliceStridedSlice,gradients/boolean_mask_2/Gather_grad/ToInt32Agradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stackCgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_1Cgradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 

4gradients/boolean_mask_2/Reshape_grad/Reshape/tensorUnsortedSegmentSum,gradients/boolean_mask_2/Gather_grad/Reshape.gradients/boolean_mask_2/Gather_grad/Reshape_1;gradients/boolean_mask_2/Reshape_grad/Reshape/strided_slice*
Tindices0	*
T0*
Tnumsegments0
²
-gradients/boolean_mask_2/Reshape_grad/ReshapeReshape4gradients/boolean_mask_2/Reshape_grad/Reshape/tensor+gradients/boolean_mask_2/Reshape_grad/Shape*
T0*
Tshape0
V
+gradients/boolean_mask_1/Reshape_grad/ShapeShapeMinimum*
T0*
out_type0
o
Agradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackConst*
dtype0*
valueB: 
q
Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
q
Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
À
;gradients/boolean_mask_1/Reshape_grad/Reshape/strided_sliceStridedSlice,gradients/boolean_mask_1/Gather_grad/ToInt32Agradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stackCgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_1Cgradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 

4gradients/boolean_mask_1/Reshape_grad/Reshape/tensorUnsortedSegmentSum,gradients/boolean_mask_1/Gather_grad/Reshape.gradients/boolean_mask_1/Gather_grad/Reshape_1;gradients/boolean_mask_1/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0	*
T0
²
-gradients/boolean_mask_1/Reshape_grad/ReshapeReshape4gradients/boolean_mask_1/Reshape_grad/Reshape/tensor+gradients/boolean_mask_1/Reshape_grad/Shape*
T0*
Tshape0
T
)gradients/boolean_mask/Reshape_grad/ShapeShapeMaximum*
T0*
out_type0
m
?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0
o
Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0
o
Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0
¶
9gradients/boolean_mask/Reshape_grad/Reshape/strided_sliceStridedSlice*gradients/boolean_mask/Gather_grad/ToInt32?gradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stackAgradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_1Agradients/boolean_mask/Reshape_grad/Reshape/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0*
shrink_axis_mask

2gradients/boolean_mask/Reshape_grad/Reshape/tensorUnsortedSegmentSum*gradients/boolean_mask/Gather_grad/Reshape,gradients/boolean_mask/Gather_grad/Reshape_19gradients/boolean_mask/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0	*
T0
¬
+gradients/boolean_mask/Reshape_grad/ReshapeReshape2gradients/boolean_mask/Reshape_grad/Reshape/tensor)gradients/boolean_mask/Reshape_grad/Shape*
T0*
Tshape0
G
gradients/mul_7_grad/ShapeShape	ones_like*
T0*
out_type0
E
gradients/mul_7_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
]
gradients/mul_7_grad/MulMul-gradients/boolean_mask_2/Reshape_grad/ReshapeMean*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
d
gradients/mul_7_grad/Mul_1Mul	ones_like-gradients/boolean_mask_2/Reshape_grad/Reshape*
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
¹
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
¿
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1*
T0
E
gradients/Minimum_grad/ShapeShapemul_8*
out_type0*
T0
G
gradients/Minimum_grad/Shape_1Shapemul_9*
T0*
out_type0
o
gradients/Minimum_grad/Shape_2Shape-gradients/boolean_mask_1/Reshape_grad/Reshape*
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
 gradients/Minimum_grad/LessEqual	LessEqualmul_8mul_9*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual-gradients/boolean_mask_1/Reshape_grad/Reshapegradients/Minimum_grad/zeros*
T0
¡
gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros-gradients/boolean_mask_1/Reshape_grad/Reshape*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Minimum_grad/Reshape*
T0
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
m
gradients/Maximum_grad/Shape_2Shape+gradients/boolean_mask/Reshape_grad/Reshape*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0
 
gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual+gradients/boolean_mask/Reshape_grad/Reshapegradients/Maximum_grad/zeros*
T0
¢
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros+gradients/boolean_mask/Reshape_grad/Reshape*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Á
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ç
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
L
gradients/ones_like_grad/ConstConst*
valueB: *
dtype0

gradients/ones_like_grad/SumSum-gradients/mul_7_grad/tuple/control_dependencygradients/ones_like_grad/Const*
	keep_dims( *

Tidx0*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape/gradients/mul_7_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
G
gradients/Mean_grad/ConstConst*
valueB:*
dtype0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Const*

Tmultiples0*
T0
H
gradients/Mean_grad/Const_1Const*
valueB
 *   @*
dtype0
f
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Const_1*
T0
G
gradients/mul_8_grad/ShapeShape	truediv_2*
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
e
gradients/mul_8_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
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
f
gradients/mul_8_grad/Mul_1Mul	truediv_2/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_8_grad/Sum_1Sumgradients/mul_8_grad/Mul_1,gradients/mul_8_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_8_grad/Reshape_1Reshapegradients/mul_8_grad/Sum_1gradients/mul_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Reshape^gradients/mul_8_grad/Reshape_1
¹
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Reshape&^gradients/mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape
¿
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Reshape_1&^gradients/mul_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/mul_8_grad/Reshape_1*
T0
M
gradients/mul_9_grad/ShapeShapeclip_by_value_1*
out_type0*
T0
J
gradients/mul_9_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_9_grad/Shapegradients/mul_9_grad/Shape_1*
T0
g
gradients/mul_9_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_9_grad/SumSumgradients/mul_9_grad/Mul*gradients/mul_9_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_9_grad/ReshapeReshapegradients/mul_9_grad/Sumgradients/mul_9_grad/Shape*
T0*
Tshape0
n
gradients/mul_9_grad/Mul_1Mulclip_by_value_11gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_9_grad/Sum_1Sumgradients/mul_9_grad/Mul_1,gradients/mul_9_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_9_grad/Reshape_1Reshapegradients/mul_9_grad/Sum_1gradients/mul_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Reshape^gradients/mul_9_grad/Reshape_1
¹
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Reshape&^gradients/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_9_grad/Reshape
¿
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Reshape_1&^gradients/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_9_grad/Reshape_1
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_1*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0

'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_10^gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
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
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
^
(gradients/SquaredDifference_1_grad/ShapeShapediscounted_rewards*
T0*
out_type0
S
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_1*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_1_grad/subSubdiscounted_rewardsadd_12^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ñ
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ë
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
C
gradients/mul_6_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_6_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
J
gradients/mul_6_grad/MulMulgradients/Mean_grad/truedivLog*
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
P
gradients/mul_6_grad/Mul_1Mulmul_6/xgradients/Mean_grad/truediv*
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
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
¿
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_1_grad/Shape_2Shape-gradients/mul_9_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
dtype0*
valueB
 *    

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/Minimumsub_2*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
º
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual-gradients/mul_9_grad/tuple/control_dependency$gradients/clip_by_value_1_grad/zeros*
T0
¼
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros-gradients/mul_9_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
Tshape0*
T0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
á
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ç
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
L
gradients/Sum_1_grad/ShapeShapevalue_estimate*
T0*
out_type0
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
½
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
ª
gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*

index_type0
á
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
N
w
gradients/Sum_1_grad/Maximum/yConst*-
_class#
!loc:@gradients/Sum_1_grad/Shape*
value	B :*
dtype0
£
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
gradients/Sum_1_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*

Tmultiples0*
T0
Q
gradients/add_1_grad/ShapeShapeold_value_estimates*
T0*
out_type0
M
gradients/add_1_grad/Shape_1Shapeclip_by_value*
T0*
out_type0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0
°
gradients/add_1_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0
´
gradients/add_1_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
T0
m
gradients/Log_grad/Reciprocal
Reciprocalmul_50^gradients/mul_6_grad/tuple/control_dependency_1*
T0
v
gradients/Log_grad/mulMul/gradients/mul_6_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
Y
,gradients/clip_by_value_1/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
X
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqual	truediv_2add_3*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
ª
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
Tshape0*
T0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
w
$gradients/clip_by_value_grad/Shape_2Shape/gradients/add_1_grad/tuple/control_dependency_1*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*

index_type0*
T0
^
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/MinimumNeg*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
¶
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual/gradients/add_1_grad/tuple/control_dependency_1"gradients/clip_by_value_grad/zeros*
T0
¸
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros/gradients/add_1_grad/tuple/control_dependency_1*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ù
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1
C
gradients/mul_5_grad/ShapeConst*
dtype0*
valueB 
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
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
K
gradients/mul_5_grad/Mul_1Mulmul_5/xgradients/Log_grad/mul*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/Mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
Tshape0*
T0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
¿
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
É
gradients/AddNAddN-gradients/mul_8_grad/tuple/control_dependency?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_8_grad/Reshape*
N
J
gradients/truediv_2_grad/ShapeShapeIdentity*
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
gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
6
gradients/truediv_2_grad/NegNegIdentity*
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
gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
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
Ï
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
S
*gradients/clip_by_value/Minimum_grad/ShapeShapesub_1*
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
^
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqualsub_1PolynomialDecay_1*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ñ
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
ª
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ù
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
ÿ
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
A
gradients/sub_1_grad/ShapeShapeSum*
T0*
out_type0
S
gradients/sub_1_grad/Shape_1Shapeold_value_estimates*
T0*
out_type0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
°
gradients/sub_1_grad/SumSum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
´
gradients/sub_1_grad/Sum_1Sum=gradients/clip_by_value/Minimum_grad/tuple/control_dependency,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
¿
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
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
gradients/action_probs_grad/SumSumgradients/action_probs_grad/Mul1gradients/action_probs_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum!gradients/action_probs_grad/Shape*
T0*
Tshape0
k
!gradients/action_probs_grad/Mul_1MulExp_11gradients/truediv_2_grad/tuple/control_dependency*
T0
¦
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
J
gradients/Sum_grad/ShapeShapevalue_estimate*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
dtype0
u
gradients/Sum_grad/range/startConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : 
u
gradients/Sum_grad/range/deltaConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*

Tidx0
t
gradients/Sum_grad/Fill/valueConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*

index_type0
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
s
gradients/Sum_grad/Maximum/yConst*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
dtype0

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape-gradients/sub_1_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
Tshape0*
T0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
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
gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
Ï
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1

gradients/AddN_1AddNgradients/Sum_1_grad/Tilegradients/Sum_grad/Tile*
T0*,
_class"
 loc:@gradients/Sum_1_grad/Tile*
N
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
gradients/truediv_grad/ReshapeReshapegradients/truediv_grad/Sumgradients/truediv_grad/Shape*
Tshape0*
T0
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
gradients/truediv_grad/Sum_1Sumgradients/truediv_grad/mul.gradients/truediv_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
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
Ç
1gradients/truediv_grad/tuple/control_dependency_1Identity gradients/truediv_grad/Reshape_1(^gradients/truediv_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_grad/Reshape_1
p
gradients/Sqrt_1_grad/SqrtGradSqrtGradSqrt_13gradients/truediv_1_grad/tuple/control_dependency_1*
T0
k
*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
w
/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1+^gradients/dense_5/BiasAdd_grad/BiasAddGrad
¾
7gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_10^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_1_grad/Tile
ë
9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_5/BiasAdd_grad/BiasAddGrad0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_5/BiasAdd_grad/BiasAddGrad
C
gradients/mul_1_grad/ShapeConst*
dtype0*
valueB 
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
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
d
gradients/mul_1_grad/Mul_1Mulmul_1/x/gradients/truediv_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
¿
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
gradients/mul_2_grad/SumSumgradients/mul_2_grad/Mul*gradients/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/mul_2_grad/ReshapeReshapegradients/mul_2_grad/Sumgradients/mul_2_grad/Shape*
T0*
Tshape0
f
gradients/mul_2_grad/Mul_1Mulmul_2/x1gradients/truediv_grad/tuple/control_dependency_1*
T0

gradients/mul_2_grad/Sum_1Sumgradients/mul_2_grad/Mul_1,gradients/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_2_grad/Reshape_1Reshapegradients/mul_2_grad/Sum_1gradients/mul_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Reshape^gradients/mul_2_grad/Reshape_1
¹
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Reshape&^gradients/mul_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_2_grad/Reshape
¿
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Reshape_1&^gradients/mul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_2_grad/Reshape_1
H
gradients/mul_4_grad/ShapeConst*
valueB:*
dtype0
E
gradients/mul_4_grad/Shape_1Const*
dtype0*
valueB 

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
Q
gradients/mul_4_grad/MulMulgradients/Sqrt_1_grad/SqrtGradmul_4/y*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/Mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
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
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
Tshape0*
T0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
«
$gradients/dense_5/MatMul_grad/MatMulMatMul7gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
T0*
transpose_a( *
transpose_b(
¦
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldense_3/Tanh7gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
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
gradients/Pow_grad/sub/yConst*
dtype0*
valueB
 *  ?
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
gradients/Pow_grad/Sum_1Sumgradients/Pow_grad/mul_3*gradients/Pow_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/Pow_grad/Reshape_1Reshapegradients/Pow_grad/Sum_1gradients/Pow_grad/Shape_1*
Tshape0*
T0
g
#gradients/Pow_grad/tuple/group_depsNoOp^gradients/Pow_grad/Reshape^gradients/Pow_grad/Reshape_1
±
+gradients/Pow_grad/tuple/control_dependencyIdentitygradients/Pow_grad/Reshape$^gradients/Pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Pow_grad/Reshape
·
-gradients/Pow_grad/tuple/control_dependency_1Identitygradients/Pow_grad/Reshape_1$^gradients/Pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Pow_grad/Reshape_1*
T0
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
gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1

$gradients/dense_3/Tanh_grad/TanhGradTanhGraddense_3/Tanh6gradients/dense_5/MatMul_grad/tuple/control_dependency*
T0
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
gradients/sub_grad/Sum_1Sum+gradients/Pow_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1

*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_3/Tanh_grad/TanhGrad+^gradients/dense_3/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_3/Tanh_grad/TanhGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/Tanh_grad/TanhGrad
ë
9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
T0*
transpose_a( *
transpose_b(
¦
&gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Tanh7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul*
T0
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1

$gradients/dense_2/Tanh_grad/TanhGradTanhGraddense_2/Tanh6gradients/dense_3/MatMul_grad/tuple/control_dependency*
T0

*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_2/Tanh_grad/TanhGrad+^gradients/dense_2/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Tanh_grad/TanhGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Tanh_grad/TanhGrad
ë
9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
transpose_a( *
transpose_b(*
T0
¬
&gradients/dense_2/MatMul_grad/MatMul_1MatMulvector_observation7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
ð
gradients/AddN_2AddN/gradients/mul_5_grad/tuple/control_dependency_1/gradients/mul_2_grad/tuple/control_dependency_1/gradients/mul_3_grad/tuple/control_dependency_1*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1*
N
=
gradients/Exp_grad/mulMulgradients/AddN_2Exp*
T0
¡
$gradients/dense_4/MatMul_grad/MatMulMatMul-gradients/sub_grad/tuple/control_dependency_1dense_4/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_1/Tanh-gradients/sub_grad/tuple/control_dependency_1*
T0*
transpose_a(*
transpose_b( 
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

*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_1/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp%^gradients/dense_1/Tanh_grad/TanhGrad+^gradients/dense_1/BiasAdd_grad/BiasAddGrad
Ý
7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_1/Tanh_grad/TanhGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/Tanh_grad/TanhGrad
ë
9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad
«
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
transpose_a( *
transpose_b(*
T0
¤
&gradients/dense_1/MatMul_grad/MatMul_1MatMul
dense/Tanh7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1
Û
6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul
á
8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1
{
"gradients/dense/Tanh_grad/TanhGradTanhGrad
dense/Tanh6gradients/dense_1/MatMul_grad/tuple/control_dependency*
T0
{
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp#^gradients/dense/Tanh_grad/TanhGrad)^gradients/dense/BiasAdd_grad/BiasAddGrad
Õ
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Tanh_grad/TanhGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Tanh_grad/TanhGrad
ã
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
¥
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_a( *
transpose_b(*
T0
¨
$gradients/dense/MatMul_grad/MatMul_1MatMulvector_observation5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *fff?*
dtype0
v
beta1_power
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
_class
loc:@dense/bias*
valueB
 *w¾?*
dtype0
v
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"<      *
dtype0
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense/kernel*
valueB
 *    
Ç
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*

index_type0

dense/kernel/Adam
VariableV2*
dtype0*
	container *
shape:	<*
shared_name *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
valueB"<      *
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

dense/kernel/Adam_1
VariableV2*
shape:	<*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel

1dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
s
'dense/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0
¿
!dense/bias/Adam/Initializer/zerosFill1dense/bias/Adam/Initializer/zeros/shape_as_tensor'dense/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0

dense/bias/Adam
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape:*
shared_name 
¥
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias

3dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/bias*
valueB:*
dtype0
u
)dense/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense/bias*
valueB
 *    *
dtype0
Å
#dense/bias/Adam_1/Initializer/zerosFill3dense/bias/Adam_1/Initializer/zeros/shape_as_tensor)dense/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense/bias*

index_type0

dense/bias/Adam_1
VariableV2*
_class
loc:@dense/bias*
dtype0*
	container *
shape:*
shared_name 
«
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias

5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
dtype0
{
+dense_1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_1/kernel*
valueB
 *    *
dtype0
Ï
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_1/kernel*

index_type0

dense_1/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container *
shape:

µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*!
_class
loc:@dense_1/kernel*
T0

7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_1/kernel*
valueB"      *
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

dense_1/kernel/Adam_1
VariableV2*
shape:
*
shared_name *!
_class
loc:@dense_1/kernel*
dtype0*
	container 
»
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

3dense_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
w
)dense_1/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_1/bias*
valueB
 *    *
dtype0
Ç
#dense_1/bias/Adam/Initializer/zerosFill3dense_1/bias/Adam/Initializer/zeros/shape_as_tensor)dense_1/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0

dense_1/bias/Adam
VariableV2*
	container *
shape:*
shared_name *
_class
loc:@dense_1/bias*
dtype0
­
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(
_
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias

5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_1/bias*
valueB:*
dtype0
y
+dense_1/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_1/bias*
valueB
 *    
Í
%dense_1/bias/Adam_1/Initializer/zerosFill5dense_1/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_1/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_1/bias*

index_type0

dense_1/bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_1/bias
³
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0
c
dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
_class
loc:@dense_1/bias*
T0

5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"<      *
dtype0
{
+dense_2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_2/kernel*
valueB
 *    *
dtype0
Ï
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_2/kernel*

index_type0

dense_2/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	<
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_2/kernel*
valueB"<      *
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

dense_2/kernel/Adam_1
VariableV2*!
_class
loc:@dense_2/kernel*
dtype0*
	container *
shape:	<*
shared_name 
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel

3dense_2/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
w
)dense_2/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
Ç
#dense_2/bias/Adam/Initializer/zerosFill3dense_2/bias/Adam/Initializer/zeros/shape_as_tensor)dense_2/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_2/bias*

index_type0

dense_2/bias/Adam
VariableV2*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container *
shape:
­
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias
_
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
_class
loc:@dense_2/bias*
T0

5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_2/bias*
valueB:*
dtype0
y
+dense_2/bias/Adam_1/Initializer/zeros/ConstConst*
_class
loc:@dense_2/bias*
valueB
 *    *
dtype0
Í
%dense_2/bias/Adam_1/Initializer/zerosFill5dense_2/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_2/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_2/bias*

index_type0

dense_2/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_2/bias*
dtype0*
	container 
³
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(
c
dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias

5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
{
+dense_3/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0
Ï
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_3/kernel*

index_type0

dense_3/kernel/Adam
VariableV2*
shape:
*
shared_name *!
_class
loc:@dense_3/kernel*
dtype0*
	container 
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*!
_class
loc:@dense_3/kernel*
T0

7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_3/kernel*
valueB"      *
dtype0
}
-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*!
_class
loc:@dense_3/kernel*
valueB
 *    *
dtype0
Õ
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*!
_class
loc:@dense_3/kernel*

index_type0*
T0

dense_3/kernel/Adam_1
VariableV2*
dtype0*
	container *
shape:
*
shared_name *!
_class
loc:@dense_3/kernel
»
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

3dense_3/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_3/bias*
valueB:*
dtype0
w
)dense_3/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_3/bias*
valueB
 *    *
dtype0
Ç
#dense_3/bias/Adam/Initializer/zerosFill3dense_3/bias/Adam/Initializer/zeros/shape_as_tensor)dense_3/bias/Adam/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@dense_3/bias
­
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(
_
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias

5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@dense_3/bias*
valueB:
y
+dense_3/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_3/bias*
valueB
 *    
Í
%dense_3/bias/Adam_1/Initializer/zerosFill5dense_3/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_3/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_3/bias*

index_type0

dense_3/bias/Adam_1
VariableV2*
_class
loc:@dense_3/bias*
dtype0*
	container *
shape:*
shared_name 
³
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(
c
dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias

5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_4/kernel*
valueB"      *
dtype0
{
+dense_4/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_4/kernel*
valueB
 *    *
dtype0
Ï
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_4/kernel*

index_type0

dense_4/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:	
µ
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
valueB"      *
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

dense_4/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_4/kernel*
dtype0*
	container *
shape:	
»
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*!
_class
loc:@dense_4/kernel*
validate_shape(*
use_locking(*
T0
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
(log_sigma_squared/Adam/Initializer/zerosFill8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensor.log_sigma_squared/Adam/Initializer/zeros/Const*$
_class
loc:@log_sigma_squared*

index_type0*
T0

log_sigma_squared/Adam
VariableV2*
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container 
Á
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*$
_class
loc:@log_sigma_squared*
T0

:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensorConst*$
_class
loc:@log_sigma_squared*
valueB:*
dtype0

0log_sigma_squared/Adam_1/Initializer/zeros/ConstConst*$
_class
loc:@log_sigma_squared*
valueB
 *    *
dtype0
á
*log_sigma_squared/Adam_1/Initializer/zerosFill:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensor0log_sigma_squared/Adam_1/Initializer/zeros/Const*$
_class
loc:@log_sigma_squared*

index_type0*
T0

log_sigma_squared/Adam_1
VariableV2*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container *
shape:
Ç
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*$
_class
loc:@log_sigma_squared*
validate_shape(*
use_locking(*
T0
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared

5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@dense_5/kernel*
valueB"      *
dtype0
{
+dense_5/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@dense_5/kernel*
valueB
 *    *
dtype0
Ï
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@dense_5/kernel*

index_type0

dense_5/kernel/Adam
VariableV2*
shape:	*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container 
µ
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
valueB"      *
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

dense_5/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@dense_5/kernel*
dtype0*
	container *
shape:	
»
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

3dense_5/bias/Adam/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
w
)dense_5/bias/Adam/Initializer/zeros/ConstConst*
_class
loc:@dense_5/bias*
valueB
 *    *
dtype0
Ç
#dense_5/bias/Adam/Initializer/zerosFill3dense_5/bias/Adam/Initializer/zeros/shape_as_tensor)dense_5/bias/Adam/Initializer/zeros/Const*
_class
loc:@dense_5/bias*

index_type0*
T0

dense_5/bias/Adam
VariableV2*
_class
loc:@dense_5/bias*
dtype0*
	container *
shape:*
shared_name 
­
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(
_
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias

5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense_5/bias*
valueB:*
dtype0
y
+dense_5/bias/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@dense_5/bias*
valueB
 *    
Í
%dense_5/bias/Adam_1/Initializer/zerosFill5dense_5/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_5/bias/Adam_1/Initializer/zeros/Const*
T0*
_class
loc:@dense_5/bias*

index_type0

dense_5/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense_5/bias*
dtype0*
	container 
³
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
_class
loc:@dense_5/bias*
validate_shape(*
use_locking(*
T0
c
dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
É
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/kernel*
use_nesterov( *
use_locking( 
À
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@dense/bias*
use_nesterov( *
use_locking( 
Õ
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*!
_class
loc:@dense_1/kernel*
use_nesterov( *
use_locking( *
T0
Ì
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_1/bias*
use_nesterov( 
Õ
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*!
_class
loc:@dense_2/kernel
Ì
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@dense_2/bias
Õ
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_3/kernel*
use_nesterov( *
use_locking( 
Ì
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_3/bias*
use_nesterov( 
Õ
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@dense_4/kernel*
use_nesterov( 
Â
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/Exp_grad/mul*
use_locking( *
T0*$
_class
loc:@log_sigma_squared*
use_nesterov( 
Õ
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@dense_5/kernel*
use_nesterov( *
use_locking( 
Ì
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense_5/bias*
use_nesterov( 

Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
_class
loc:@dense/bias*
T0
}
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
 

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam*
T0*
_class
loc:@dense/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
ó
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
¯
initNoOp^global_step/Assign^last_reward/Assign^dense/kernel/Assign^dense/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^dense_3/kernel/Assign^dense_3/bias/Assign^dense_4/kernel/Assign^log_sigma_squared/Assign^dense_5/kernel/Assign^dense_5/bias/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign^dense_5/bias/Adam/Assign^dense_5/bias/Adam_1/Assign
8

save/ConstConst*
dtype0*
valueB Bmodel
©
save/SaveV2/tensor_namesConst*ø
valueîBë(Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1*
dtype0

save/SaveV2/shape_and_slicesConst*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ô
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1global_steplast_rewardlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1*6
dtypes,
*2(
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
»
save/RestoreV2/tensor_namesConst"/device:CPU:0*ø
valueîBë(Bbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1Bglobal_stepBlast_rewardBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1*
dtype0
©
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
¬
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*6
dtypes,
*2(

save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/bias

save/Assign_2Assign
dense/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_3Assigndense/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_4Assigndense/bias/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_5Assigndense/kernelsave/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense/kernel

save/Assign_6Assigndense/kernel/Adamsave/RestoreV2:6*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_7Assigndense/kernel/Adam_1save/RestoreV2:7*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_8Assigndense_1/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(

save/Assign_9Assigndense_1/bias/Adamsave/RestoreV2:9*
_class
loc:@dense_1/bias*
validate_shape(*
use_locking(*
T0

save/Assign_10Assigndense_1/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@dense_1/bias*
validate_shape(

save/Assign_11Assigndense_1/kernelsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(

save/Assign_12Assigndense_1/kernel/Adamsave/RestoreV2:12*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(

save/Assign_13Assigndense_1/kernel/Adam_1save/RestoreV2:13*!
_class
loc:@dense_1/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_14Assigndense_2/biassave/RestoreV2:14*
validate_shape(*
use_locking(*
T0*
_class
loc:@dense_2/bias

save/Assign_15Assigndense_2/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(

save/Assign_16Assigndense_2/bias/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class
loc:@dense_2/bias*
validate_shape(

save/Assign_17Assigndense_2/kernelsave/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_18Assigndense_2/kernel/Adamsave/RestoreV2:18*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(

save/Assign_19Assigndense_2/kernel/Adam_1save/RestoreV2:19*
validate_shape(*
use_locking(*
T0*!
_class
loc:@dense_2/kernel

save/Assign_20Assigndense_3/biassave/RestoreV2:20*
_class
loc:@dense_3/bias*
validate_shape(*
use_locking(*
T0

save/Assign_21Assigndense_3/bias/Adamsave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_22Assigndense_3/bias/Adam_1save/RestoreV2:22*
use_locking(*
T0*
_class
loc:@dense_3/bias*
validate_shape(

save/Assign_23Assigndense_3/kernelsave/RestoreV2:23*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_24Assigndense_3/kernel/Adamsave/RestoreV2:24*
use_locking(*
T0*!
_class
loc:@dense_3/kernel*
validate_shape(

save/Assign_25Assigndense_3/kernel/Adam_1save/RestoreV2:25*!
_class
loc:@dense_3/kernel*
validate_shape(*
use_locking(*
T0

save/Assign_26Assigndense_4/kernelsave/RestoreV2:26*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_27Assigndense_4/kernel/Adamsave/RestoreV2:27*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_28Assigndense_4/kernel/Adam_1save/RestoreV2:28*
use_locking(*
T0*!
_class
loc:@dense_4/kernel*
validate_shape(

save/Assign_29Assigndense_5/biassave/RestoreV2:29*
use_locking(*
T0*
_class
loc:@dense_5/bias*
validate_shape(

save/Assign_30Assigndense_5/bias/Adamsave/RestoreV2:30*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
use_locking(

save/Assign_31Assigndense_5/bias/Adam_1save/RestoreV2:31*
T0*
_class
loc:@dense_5/bias*
validate_shape(*
use_locking(

save/Assign_32Assigndense_5/kernelsave/RestoreV2:32*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(*
use_locking(

save/Assign_33Assigndense_5/kernel/Adamsave/RestoreV2:33*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_34Assigndense_5/kernel/Adam_1save/RestoreV2:34*
use_locking(*
T0*!
_class
loc:@dense_5/kernel*
validate_shape(

save/Assign_35Assignglobal_stepsave/RestoreV2:35*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(

save/Assign_36Assignlast_rewardsave/RestoreV2:36*
use_locking(*
T0*
_class
loc:@last_reward*
validate_shape(

save/Assign_37Assignlog_sigma_squaredsave/RestoreV2:37*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_38Assignlog_sigma_squared/Adamsave/RestoreV2:38*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_39Assignlog_sigma_squared/Adam_1save/RestoreV2:39*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
´
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39
ª
Const_4Const*
valueBýBtrainerBppoB
batch_sizeB1024BbetaB0.01Bbuffer_sizeB10240BepsilonB0.2BgammaB0.99Bhidden_unitsB128BlambdB0.95Blearning_rateB0.0003B	max_stepsB5.0e5Bmemory_sizeB256B	normalizeBFalseB	num_epochB3B
num_layersB2Btime_horizonB64Bsequence_lengthB64Bsummary_freqB1000Buse_recurrentBFalseBgraph_scopeB Bsummary_pathB./summaries/boatsimulator-76*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_4+Hyperparameters/serialized_summary_metadata*
T0"