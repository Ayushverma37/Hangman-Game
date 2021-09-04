#!/usr/local/bin/perl

@sample_words = ("computer","radio","calculator","teacher","bureau","police","geometry","president","subject","country","enviroment","classroom","animals","province","month","politics","puzzle","instrument","kitchen","language","vampire","ghost","solution","service","software","virus25","security","phonenumber","expert","website","agreement","support","compatibility","advanced","search","triathlon","immediately","encyclopedia","endurance","distance","nature","history","organization","international","championship","government","popularity","thousand","feature","wetsuit","fitness","legendary","variation","equal","approximately","segment","priority","physics","branche","science","mathematics","lightning","dispersion","accelerator","detector","terminology","design","operation","foundation","application","prediction","reference","measurement","concept","perspective","overview","position","airplane","symmetry","dimension","toxic","algebra","illustration","classic","verification","citation","unusual","resource","analysis","license","comedy","screenplay","production","release","emphasis","director","trademark","vehicle","aircraft","experiment");

$len_array=$#sample_words+1;
$wr_guesses="";
$stringg="";
@corr_guesses=();
$tried=0;

&hangman();

sub take_input
{
	# Takes input from player
	$letter=<STDIN>;
		chomp($letter);
		$letter=lc($letter);
		return $letter;
}

sub winornot {
	#check if player has won or not
	($random_word)=@_;
	$charac="_";
	my $var = 0; 
	while($var < length($random_word))
	{
		if(($charac cmp $corr_guesses[$var])==0)
		{
			return;
		}
		$var++;
	}
	# player has won
	$str=join(" ",@corr_guesses);
		print "$str\n";
		print "Congrats! You won\n";
		exit 0;
}


sub hangman()
{
	#main fxn
	print "Welcome to Hangman\n";

	$random_word=@sample_words[int(rand($len_array))];
	&initialsie_array($random_word);

	do
	{
		&graphics($random_word);
		$str=join(" ",@corr_guesses);
		print "$str\n\n";
		print "Make a Guess : ";

		$letter=&take_input();
	
		&letter_check($random_word,$letter);
		&winornot($random_word);
	}while(1);

}

sub initialsie_array
{
	#initialising the array
	($random_word)=@_;
	my $var = 0;
	while($var < length($random_word)) 
	{
		push @corr_guesses,'_';
		$var++;
	}

}

sub graphics {
	#displaying graphics
	($random_word)=@_;
	if($tried==0)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==1)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==2)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "   |     |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==3)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "  \\|     |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==4)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "  \\|/    |\n";
        print "         |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==5)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "  \\|/    |\n";
        print "   |      |\n";
        print "         |\n";
        print "         |\n";
	}
	if($tried==6)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "  \\|/    |\n";
        print "   |     |\n";
        print "  /      |\n";
        print "         |\n";;
	}
	if($tried==7)
	{
		print "   ------ \n";
        print "   |     |\n";
        print "   o     |\n";
        print "  \\|/    |\n";
        print "   |     |\n";
        print "  / \\    |\n";
        print "         |\n";
        print "So Sorry! You lost\n";
        print "The correct word was $random_word\n";
        exit 0;
	}
}

sub letter_check
 {
	($random_word,$letter)=@_;
	$case=&check_case($random_word,$letter);
	if($case==1)
	{
		# case of already wrong guessed
		print "Sorry, You have already guessed $letter\n";
	}
	elsif($case==2)
	{
		# case of wrong guess
		$stringg=$stringg.$letter;
		print "Bad guess\n";
		$wr_guesses=$wr_guesses.$letter;
		$tried++;
	}
	else
	{
		$c=0;
		for (my $var = 0; $var < length($random_word); $var++) 
		{
			 $str=substr($random_word,$var,1);
			if(($letter cmp $corr_guesses[$var])==0)
			{
				# case of already correct guessed
				print "Sorry, You have already guessed $letter\n";
				$c=1;
                last;
			}
			if(($letter cmp $str)==0)
			{
				# case of correctd
				$corr_guesses[$var]=$str;
			}
		}
		if($c==0)
		{
			$stringg=$stringg.$letter;	
		}
	}
	
	print "\nGuessed Letters : $stringg\n";
	
}

sub check_case
{
	# check case
	($random_word,$letter)=@_;

	$ind_two=index($wr_guesses,$letter);
	$ind_one=index($random_word,$letter);
	if($ind_one==-1 && $ind_two>=0)
	{
		return 1;
	}
	elsif($ind_one==-1 && $ind_two==-1)
	{
		return 2;
	}
	else
	{
		return 3;
	}
	return 3;
}
