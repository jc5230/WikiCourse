# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

courses = [
  {:call => 12452,
   :number => "COMS W4111",
   :title => 'INTRODUCTION TO DATABASES',
   :pts => 3,
   :description => 'Prerequisites: COMS W3134, COMS W3136, or COMS W3137; or the instructor\'s permission. The course covers what a database system is, how to design databases effectively and in a principled manner, how to query databases, and how to develop applications using databases: entity-relationship modeling, logical design of relational databases, relational algebra, SQL, database application development, database security, and an overview of query optimization and transaction processing. Additional topics generally include NoSQL, graph, object- relational, and cloud databases, as well as data preparation and cleaning of real-world data. The course offers both programming and non-programming paths for homework and projects, to accommodate students with different programming skills and backgrounds.',
   :track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 1,
},
{:call => 12547,
:number => "COMS W4115",
:title => 'PROGRAMMING LANG & TRANSL',
:pts => 3,
:description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) and (COMS W3261) and (CSEE W3827) or equivalent, or the instructors permission. Modern programming languages and compiler design. Imperative, object-oriented, declarative, functional, and scripting languages. Language syntax, control structures, data types, procedures and parameters, binding, scope, run-time organization, and exception handling. Implementation of language translation tools including compilers and interpreters. Lexical, syntactic and semantic analysis; code generation; introduction to code optimization. Teams implement a language and its compiler.',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 12539,
:number => "COMS W4118",
:title => 'OPERATING SYSTEMS I',
:pts => 3,
:description => 'Prerequisites: (CSEE W3827) and knowledge of C and programming tools as covered in COMS W3136, W3157, or W3101, or the instructors permission. Design and implementation of operating systems. Topics include process management, process synchronization and interprocess communication, memory management, virtual memory, interrupt handling, processor scheduling, device management, I/O, and file systems. Case study of the UNIX operating system. A programming project is required.',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 15019,
:number => "CSEE W4119",
:title => 'COMPUTER NETWORKS',
:pts => 3,
:description => 'Prerequisites: Comfort with basic probability. Programming fluency in Python, C++, Java, or Ruby (please see section course page for specific language requirements). Introduction to computer networks and the technical foundations of the Internet, including applications, protocols, local area networks, algorithms for routing and congestion control, security, elementary performance evaluation. Several written and programming assignments required.',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 12531,
:number => "COMS W4156",
:title => 'ADVANCED SOFTWARE ENGINEE',
:pts => 3,
:description => 'Prerequisites: (COMS W3157) or equivalent. Software lifecycle using frameworks, libraries and services. Major emphasis on software testing. Centers on a team project.',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 13531,
:number => "COMS W4167",
:title => 'COMPUTER ANIMATION',
:pts => 3,
:description => ' COMPUTER ANIMATION',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 12523,
:number => "COMS W4181",
:title => 'SECURITY I',
:pts => 3,
:description => ' SECURITY I',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 13799,
:number => "COMS W4186",
:title => 'MALWARE ANALYSIS&REVERSE',
:pts => 3,
:description => ' MALWARE ANALYSIS&REVERSE',
:track => 'Machine Learning',
:breadth => 'B1',
:required => 0,
:elective => 0,
},
{:call => 13346,
:number => "CSOR W4231",
:title => 'ANALYSIS OF ALGORITHMS I',
:pts => 3,
:description => 'Prerequisites: (COMS W3134 or COMS W3136COMS W3137) and (COMS W3203) Introduction to the design and analysis of efficient algorithms. Topics include models of computation, efficient sorting and searching, algorithms for algebraic problems, graph algorithms, dynamic programming, probabilistic methods, approximation algorithms, and NP-completeness.',
:track => 'Machine Learning',
:breadth => 'B2',
:required => 0,
:elective => 0,
},
{:call => 13927,
:number => "CSOR W4246",
:title => 'ALGORITHMS FOR DATA SCIEN',
:pts => 3,
:description => 'Prerequisites: basic knowledge in programming (e.g. at the level of COMS W1007), a basic grounding in calculus and linear algebra. Methods for organizing data, e.g. hashing, trees, queues, lists,priority queues. Streaming algorithms for computing statistics on the data. Sorting and searching. Basic graph models and algorithms for searching, shortest paths, and matching. Dynamic programming. Linear and convex programming. Floating point arithmetic, stability of numerical algorithms, Eigenvalues, singular values, PCA, gradient descent, stochastic gradient descent, and block coordinate descent. Conjugate gradient, Newton and quasi-Newton methods. Large scale applications from signal processing, collaborative filtering, recommendations systems, etc.',
:track => 'Machine Learning',
:breadth => 'B2',
:required => 0,
:elective => 1,
},
{:call => 13518,
:number => "COMS W4252",
:title => 'INTRO-COMPUTATIONAL LEARN',
:pts => 3,
:description => ' INTRO-COMPUTATIONAL LEARN',
:track => 'Machine Learning',
:breadth => 'B2',
:required => 1,
:elective => 1,
},
{:call => 12512,
:number => "COMS W4419",
:title => 'INTERNET TECHNOLOGY,ECONO',
:pts => 3,
:description => ' INTERNET TECHNOLOGY,ECONO',
:track => 'Machine Learning',
:breadth => '0',
:required => 0,
:elective => 0,
},
{:call => 12504,
:number => "COMS W4444",
:title => 'PROGRAMMING & PROBLEM SOL',
:pts => 3,
:description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) and (CSEE W3827) Hands-on introduction to solving open-ended computational problems. Emphasis on creativity, cooperation, and collaboration. Projects spanning a variety of areas within computer science, typically requiring the development of computer programs. Generalization of solutions to broader problems, and specialization of complex problems to make them manageable. Team-oriented projects, student presentations, and in-class participation required.',
:track => 'Machine Learning',
:breadth => '0',
:required => 0,
:elective => 0,
},
{:call => 14948,
:number => "COMS W4460",
:title => 'PRIN-INNOVATN/ENTREPRENEU',
:pts => 3,
:description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) or the instructor\'s permission. Team project centered course focused on principles of planning, creating, and growing a technology venture. Topics include: identifying and analyzing opportunities created by technology paradigm shifts, designing innovative products, protecting intellectual property, engineering innovative business models.',
                                                                                          :track => 'Machine Learning',
                                                                                          :breadth => '0',
                                                                                          :required => 0,
                                                                                          :elective => 0,
},
  {:call => 12503,
   :number => "COMS W4701",
   :title => 'ARTIFICIAL INTELLIGENCE',
   :pts => 3,
   :description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) and any course on probability. Prior knowledge of Python is recommended. Provides a broad understanding of the basic techniques for building intelligent computer systems. Topics include state-space problem representations, problem reduction and and-or graphs, game playing and heuristic search, predicate calculus, and resolution theorem proving, AI systems and languages for knowledge representation, machine learning and concept formation and other topics such as natural language processing may be included as time permits.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 12502,
   :number => "COMS W4705",
   :title => 'NATURAL LANGUAGE PROCESSI',
   :pts => 3,
   :description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) or the instructors permission. Computational approaches to natural language generation and understanding. Recommended preparation: some previous or concurrent exposure to AI or Machine Learning. Topics include information extraction, summarization, machine translation, dialogue systems, and emotional speech. Particular attention is given to robust techniques that can handle understanding and generation for the large amounts of text on the Web or in other large corpora. Programming exercises in several of these areas.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 12749,
   :number => "COMS W4731",
   :title => 'Computer Vision I',
   :pts => 3,
   :description => 'Prerequisites: Fundamentals of calculus, linear algebra, and C programming. Students without any of these prerequisites are advised to contact the instructor prior to taking the course. Introductory course in computer vision. Topics include image formation and optics, image sensing, binary images, image processing and filtering, edge extraction and boundary detection, region growing and segmentation, pattern classification methods, brightness and reflectance, shape from shading and photometric stereo, texture, binocular stereo, optical flow and motion, 2D and 3D object representation, object recognition, vision systems and applications.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 12501,
   :number => "COMS W4733",
   :title => 'COMPUTATNL ASPECTS OF ROB',
   :pts => 3,
   :description => 'Prerequisites: (COMS W3134 or COMS W3136COMS W3137) Introduction to robotics from a computer science perspective. Topics include coordinate frames and kinematics, computer architectures for robotics, integration and use of sensors, world modeling systems, design and use of robotic programming languages, and applications of artificial intelligence for planning, assembly, and manipulation.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 12498,
   :number => "COMS W4771",
   :title => 'MACHINE LEARNING',
   :pts => 3,
   :description => 'Prerequisites: Any introductory course in linear algebra and any introductory course in statistics are both required. Highly recommended: COMS W4701 or knowledge of Artificial Intelligence. Topics from generative and discriminative machine learning including least squares methods, support vector machines, kernel methods, neural networks, Gaussian distributions, linear classification, linear regression, maximum likelihood, exponential family distributions, Bayesian networks, Bayesian inference, mixture models, the EM algorithm, graphical models and hidden Markov models. Algorithms implemented in MATLAB.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 12500,
   :number => "COMS W4774",
   :title => 'Unsupervised Learning',
   :pts => 3,
   :description => 'Core topics from unsupervised learning such as clustering, dimensionality reduction and density estimation will be studied in detail. Topics in clustering: k-means clustering, hierarchical clustering, spectral clustering, clustering with various forms of feedback, good initialization techniques and convergence analysis of various clustering procedures. Topics in dimensionality reduction: linear techniques such as PCA, ICA, Factor Analysis, Random Projections, non-linear techniques such as LLE, IsoMap, Laplacian Eigenmaps, tSNE, and study of embeddings of general metric spaces, what sorts of theoretical guarantees can one provide about such techniques. Miscellaneous topics: design and analysis of datastructures for fast Nearest Neighbor search such as Cover Trees and LSH. Algorithms will be implemented in either Matlab or Python.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 14070,
   :number => "COMS W4775",
   :title => 'Causal Inference',
   :pts => 3,
   :description => 'Causal Inference theory and applications. The theoretical topics include the 3-layer causal hierarchy, causal bayesian networks, structural learning, the identification problem and the do-calculus, linear identifiability, bounding, and counterfactual analysis. The applied part includes intersection with statistics, the empirical-data sciences (social and health), and AI and ML.',
   :track => 'Machine Learning',
   :breadth => 'B3',
   :required => 1,
   :elective => 1,
  },
  {:call => 13390,
   :number => "COMS E6156",
   :title => 'CLOUD COMPUTING',
   :pts => 3,
   :description => 'Topics in Software engineering arranged as the need and availability arises.',
   :track => 'Machine Learning',
   :breadth => '0',
   :required => 1,
   :elective => 1,
  },
  {:call => 14030,
   :number => "CSEE E6863",
   :title => 'FORMAL VERIF HW SW SYSTEM',
   :pts => 3,
   :description => 'Prerequisites: (COMS W3134 or COMS W3136 or COMS W3137) and (COMS W3261) Introduction to the theory and practice of formal methods for the design and analysis of correct (i.e. bug-free) concurrent and embedded hardware/software systems. Topics include temporal logics; model checking; deadlock and liveness issues; fairness; satisfiability (SAT) checkers; binary decision diagrams (BDDs); abstraction techniques; introduction to commercial formal verification tools. Industrial state-of-art, case studies and experiences: software analysis (C/C++/Java), hardware verification (RTL).',
   :track => 'Machine Learning',
   :breadth => '0',
   :required => 0,
   :elective => 0,
  }
    ]

courses.each do |course|
    Course.create!(course)
end



comments = [
    {   :call => 12406, 
        :rating => 5, 
        :workload => 1, 
        :description => 'this course is so coooooooooooooooool',
        :professor => "Mr. Professor", 
        :upvote => 5, 
        :downvote => 0,  
    },
    {   :call => 12406, 
        :rating => 3, 
        :workload => 5, 
        :description => 'this course is so difficult',
        :professor => "Mr. Professor", 
        :upvote => 5, 
        :downvote => 0,  
    },
    {   :call => 12547, 
        :rating => 3, 
        :workload => 3, 
        :description => 'this course is fun',
        :professor => "Mr. Professor Fun", 
        :upvote => 5, 
        :downvote => 5,  
    }
]


comments.each do |comment|
    Comment.create!(comment)
end