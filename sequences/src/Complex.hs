module Complex where

data GaussianRational = GR_BCD Integer Integer Integer deriving (Eq, Show)

gr_reduce :: GaussianRational -> GaussianRational
gr_reduce = id

gr_increment :: GaussianRational -> GaussianRational
gr_increment (GR_BCD b c d) = gr_reduce $ GR_BCD (b+1) c d

gr_reciprocal :: GaussianRational -> GaussianRational
gr_reciprocal (GR_BCD b c d) = gr_reduce $ GR_BCD (d*b) (0-c*d) (b*b+c*c)

gr_times_i :: GaussianRational -> GaussianRational
gr_times_i (GR_BCD b c d) = gr_reduce $ GR_BCD (0-c) b d
