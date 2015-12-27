function auto=Autocorr(sig,length_s,length_a)
if length_a>length_s
        auto=0;
        return;
end
for k=1:length_a
    auto(k)=0;
    for m=1:length_s-k
        auto(k)=auto(k)+sig(m)*sig(m+k-1);
    end
    auto(k)=auto(k)/length_s;
end