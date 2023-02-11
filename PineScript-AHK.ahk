::-sma::sma=ta.sma(src,len)
::-ema::ema=ta.ema(src,len)
::-wma::wma=ta.wma(src,len)
::-hma::hma=ta.hma(src,len)
::-rma::rma=ta.rma(src,len)
::-vwma::vwma=ta.vwma(src,len)
::-swma::swma=ta.swma(src)
::-vwap::vwap=ta.vwap(src)
::-lrc::lrc=ta.linreg(src,len,0)
::-alma::alma=ta.alma(src,len,offset,sigma)
::-median::median=ta.median(src,len)
::-mode::mode=ta.mode(src,len)

::-HH::HH=ta.highest(high,len)
::-LL::LL=ta.lowest(low,len)
::-src::src=input.source(close)
::-len::len=input.int(16)
::-rsi::rsi=ta.rsi(src,len)
::-cci::cci=ta.cci(src,len)
::-mfi::mfi=ta.mfi(src,len)
::-cog::cog=ta.cog(src,len)
::-tsi::tsi=ta.tsi(src,len,len*2)
::-crossover::xOver=ta.crossover(src1,src2)
::-crossunder::xUnder=ta.crossunder(src1,src2)
::-cross::X=ta.cross(src1,src2)
::-st::[supertrend, direction] = ta.supertrend(3, 10)
::-cor::cor=ta.correlation(src1, src2, len)

::-bb::[middle,upper,lower]=ta.bb(src,length,mult)
::-sar::sar=ta.sar(0.02,0.02,0.2)
::-vw::va;=ta.valuewhen(cond,src,occ)
::-var::ta.variance(src, len, bias)
::-rsi::rsi=ta.rsi(src,len)
::-nvi::nvi=ta.nvi
::-pvi::pvi=ta.pvi
::-macd::macd=ta.macd(source, fastlen, slowlen, siglen)
::-cum::cum=ta.cum(source)
::-dev::dev=ta.dev(src,len)
::-range::range=ta.range(src,len)
::-stoch::stoch=ta.stoch(source, high, low, length) 
::-rs::sym=request.security("",timeframe.period,close)


::-red::
(
color=color.new(#ff0000,0)
)
::-red1::
(
color=color.new(#e40b0b,0)
)
::-red2::
(
color=color.new(#c30e0e,0)
)
::-red3::
(
color=color.new(#a21112,0)
)
::-red4::
(
color=color.new(#821415,0)
)
::-red5::
(
color=color.new(#611618,0)
)
::-red6::
(
color=color.new(#40191c,0)
)

::-green:: 
(
color=color.new(#acfb00,0)
)
::-green1:: 
(
color=color.new(#2b9348,0)
)
::-green2:: 
(
color=color.new(#55a630,0)
)
::-green3:: 
(
color=color.new(#80b918,0)
)
::-green4:: 
(
color=color.new(#aacc00,0)
)
::-green5:: 
(
color=color.new(#bfd200,0)
)
::-green6:: 
(
color=color.new(#d4d700,0)
)

::-blue:: 
(
color=color.new(#2667ff,0)
)
::-orange:: 
(
color=color.new(#eca400,0)
)
::-yellow:: 
(
color=color.new(#ffd60a,0)
)
::-purple:: 
(
color=color.new(#1b2cc1,0)
)
::-olive :: 
(
color=color.new(#98ce00,0)
)


::-sincesince::ta.barssince( ) < ta.barssince( ) ? : 
::-maxmin::math.max( , ) - math.min ( , )

::-curve::  
(
curve(float src,int len,int lb1 = 1,int lb2 = 2)=>
    x=ta.linreg((ta.highest(src[len],len)-ta.lowest(src[len],len) > ta.highest(src,len)-ta.lowest(src,len))? 
  ta.sma(math.avg(open,open[lb1],open[lb2])<math.avg(close,close[lb1],close[lb2])? 
ta.highest(src,math.round(math.avg(lb1,lb2))):ta.lowest(src,math.round(math.avg(lb1,lb2))),len) :ta.linreg(src,len ,0),len,0) 
avg=math.avg(x,ta.ema(src,math.round(len/2))) 
avg 
)   

::-rlen::
(
length(maxlen,ratio,type="><")=>
    length =  type=="<"?ratio>=0.95?maxlen:
ratio>0.90?math.round(0.95*maxlen):
ratio>0.85?math.round(0.90*maxlen):
ratio>0.80?math.round(0.85*maxlen):
ratio>0.75?math.round(0.80*maxlen):
ratio>0.70?math.round(0.75*maxlen):
ratio>0.65?math.round(0.70*maxlen):
ratio>0.60?math.round(0.65*maxlen):
ratio>0.55?math.round(0.60*maxlen):
ratio>0.50?math.round(0.55*maxlen):
ratio>0.45?math.round(0.50*maxlen):
ratio>0.40?math.round(0.45*maxlen):
ratio>0.35?math.round(0.40*maxlen):
ratio>0.30?math.round(0.35*maxlen):
ratio>0.25?math.round(0.30*maxlen):
ratio>0.20?math.round(0.25*maxlen):
ratio>0.15?math.round(0.20*maxlen):
ratio>0.10?math.round(0.15*maxlen):
ratio>0.05?math.round(0.10*maxlen):
math.round(0.05*maxlen):type==">"? ratio>=0.95?0.05*maxlen:
ratio>0.90?math.round(0.10*maxlen):
ratio>0.85?math.round(0.15*maxlen):
ratio>0.80?math.round(0.20*maxlen):
ratio>0.75?math.round(0.25*maxlen):
ratio>0.70?math.round(0.30*maxlen):
ratio>0.65?math.round(0.35*maxlen):
ratio>0.60?math.round(0.40*maxlen):
ratio>0.55?math.round(0.45*maxlen):
ratio>0.50?math.round(0.50*maxlen):
ratio>0.45?math.round(0.55*maxlen):
ratio>0.40?math.round(0.60*maxlen):
ratio>0.35?math.round(0.65*maxlen):
ratio>0.30?math.round(0.70*maxlen):
ratio>0.25?math.round(0.75*maxlen):
ratio>0.20?math.round(0.80*maxlen):
ratio>0.15?math.round(0.85*maxlen):
ratio>0.10?math.round(0.90*maxlen):
ratio>0.05?math.round(0.95*maxlen):
math.round(maxlen):type=="><"?ratio>=0.95?maxlen:
ratio>0.90?math.round(0.9*maxlen):
ratio>0.85?math.round(0.8*maxlen):
ratio>0.80?math.round(0.7*maxlen):
ratio>0.75?math.round(0.6*maxlen):
ratio>0.70?math.round(0.5*maxlen):
ratio>0.65?math.round(0.4*maxlen):
ratio>0.60?math.round(0.3*maxlen):
ratio>0.55?math.round(0.2*maxlen):
ratio>0.50?math.round(0.1*maxlen):
ratio>0.45?math.round(0.1*maxlen):
ratio>0.40?math.round(0.2*maxlen):
ratio>0.35?math.round(0.3*maxlen):
ratio>0.30?math.round(0.4*maxlen):
ratio>0.25?math.round(0.5*maxlen):
ratio>0.20?math.round(0.6*maxlen):
ratio>0.15?math.round(0.7*maxlen):
ratio>0.10?math.round(0.8*maxlen):
ratio>0.05?math.round(0.9*maxlen):
math.round(maxlen):type=="<>"?ratio>=0.95?0.1*maxlen:
ratio>0.90?math.round(0.2*maxlen):
ratio>0.85?math.round(0.3*maxlen):
ratio>0.80?math.round(0.4*maxlen):
ratio>0.75?math.round(0.5*maxlen):
ratio>0.70?math.round(0.6*maxlen):
ratio>0.65?math.round(0.7*maxlen):
ratio>0.60?math.round(0.8*maxlen):
ratio>0.55?math.round(0.9*maxlen):
ratio>0.50?math.round(maxlen):
ratio>0.45?math.round(maxlen):
ratio>0.40?math.round(0.9*maxlen):
ratio>0.35?math.round(0.8*maxlen):
ratio>0.30?math.round(0.7*maxlen):
ratio>0.25?math.round(0.6*maxlen):
ratio>0.20?math.round(0.5*maxlen):
ratio>0.15?math.round(0.4*maxlen):
ratio>0.10?math.round(0.3*maxlen):
ratio>0.05?math.round(0.2*maxlen):
math.round(0.1*maxlen):na

smoothlen=nz(math.max(math.round(ta.sma(length,32)),8),8)
smoothlen
)

::-multima::
(
multima(float x,simple int l1=16,simple int l2=32,simple int l3=48,simple int l4=64,simple int l5=96,simple int l6=128,string type="LRC")=>
    [ma1,ma2,ma3,ma4,ma5,ma6] = switch type
        "SMA"  => [ta.sma (x,l1),ta.sma (x,l2),ta.sma (x,l3),ta.sma (x,l4),ta.sma (x,l5),ta.sma (x,l6)]
"EMA"  => [ta.ema (x,l1),ta.ema (x,l2),ta.ema (x,l3),ta.ema (x,l4),ta.ema (x,l5),ta.ema (x,l6)]
"WMA"  => [ta.wma (x,l1),ta.wma (x,l2),ta.wma (x,l3),ta.wma (x,l4),ta.wma (x,l5),ta.wma (x,l6)]
"RMA"  => [ta.sma (x,l1),ta.sma (x,l2),ta.sma (x,l3),ta.sma (x,l4),ta.sma (x,l5),ta.sma (x,l6)]
"HMA"  => [ta.ema (x,l1),ta.ema (x,l2),ta.ema (x,l3),ta.ema (x,l4),ta.ema (x,l5),ta.ema (x,l6)]
"VWMA" => [ta.vwma(x,l1),ta.vwma(x,l2),ta.vwma(x,l3),ta.vwma(x,l4),ta.vwma(x,l5),ta.vwma(x,l6)]
"LRC"  => [ta.linreg(x,l1,0),ta.linreg(x,l2,0),ta.linreg(x,l3,0),ta.linreg(x,l4,0),ta.linreg(x,l5,0),ta.linreg(x,l6,0)]

[line1,line2,line3,line4,line5,line6]=multima(close,type="WMA")
)

