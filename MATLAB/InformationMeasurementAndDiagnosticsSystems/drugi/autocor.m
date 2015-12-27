function auto = autocor (sig, lenght_sig, lenght_a)

if (lenght_a > lenght_sig) auto = 0;
else
    for k = 1:lenght_a
        auto(k)=0;
        for m = 1:lenght_sig - k
            auto(k)= auto(k) + sig(m)*sig(m+k-1);
        end
        auto(k)=auto(k)/lenght_sig;
    end
end
