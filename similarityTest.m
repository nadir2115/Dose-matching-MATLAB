function [h,p] =similarityTest(sample1,sample2)
[m, n]= size(sample1);

h=[];
p=[];
for i=1:n
    h1(i)=adtest(sample1(:,i));
    h2(i)=adtest(sample2(:,i));
    if h1(i)+h2(i)>0
        [p(i),h(i)]=ranksum(sample1(:,i),sample2(:,i));%h =1 indicates that samples are from different distributions
    else
        [h(i),p(i)]= ttest2(sample1(:,i),sample2(:,i));      
    end
end