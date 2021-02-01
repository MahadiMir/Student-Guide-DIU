-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 06:29 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `st_guide`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL,
  `st_type` int(5) NOT NULL,
  `comment` varchar(191) NOT NULL,
  `sub_id` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `st_type`, `comment`, `sub_id`, `created_at`, `updated_at`) VALUES
(1, 'fahamidur15-5122@diu.edu.bd', 1, 'ddd', 10, '2019-03-20 10:18:50', '2019-03-20 10:18:50'),
(2, 'fahamidur15-5122@diu.edu.bd', 1, 'djfhjkdh', 10, '2019-03-20 10:31:36', '2019-03-20 10:31:36'),
(3, 'fahamidur15-5122@diu.edu.bd', 1, 'djfhjkdh', 10, '2019-03-20 10:31:52', '2019-03-20 10:31:52'),
(4, 'fahamidur15-5122@diu.edu.bd', 1, 'djfhjkdh', 10, '2019-03-20 10:32:06', '2019-03-20 10:32:06'),
(5, 'fahamidur15-5122@diu.edu.bd', 1, 'comment', 20, '2019-03-20 10:33:03', '2019-03-20 10:33:03'),
(6, 'fahamidur15-5122@diu.edu.bd', 2, 'skdfhjks', 74, '2019-03-20 10:33:59', '2019-03-20 10:33:59'),
(7, 'zaman6@diu.edu.bd', 2, 'I nedd help', 74, '2019-03-20 10:42:23', '2019-03-20 10:42:23'),
(8, 'zaman6@diu.edu.bd', 2, 'I nedd Some Video', 79, '2019-03-20 10:44:06', '2019-03-20 10:44:06'),
(9, 'fahamidur15-5122@diu.edu.bd', 2, 'help me with computer networks please', 95, '2019-03-20 11:08:57', '2019-03-20 11:08:57'),
(10, 'karim15-6038@diu.edu.bd', 1, 'im a teacher', 35, '2019-03-20 11:10:45', '2019-03-20 11:10:45'),
(11, 'fahamidur15-5122@diu.edu.bd', 1, 'back', 14, '2019-03-20 22:59:02', '2019-03-20 22:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `semister` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `st_type` int(11) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `semister`, `subject`, `st_type`, `file`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, '1552055267video.PNG', NULL, '2019-03-08 08:27:47', '2019-03-08 08:27:47'),
(2, 1, 2, 2, '1552055442video.PNG', NULL, '2019-03-08 08:30:42', '2019-03-08 08:30:42'),
(3, 1, 2, 2, '1552055619video.PNG', NULL, '2019-03-08 08:33:39', '2019-03-08 08:33:39'),
(4, 1, 2, 2, '1552055660video.PNG', NULL, '2019-03-08 08:34:20', '2019-03-08 08:34:20'),
(5, 1, 2, 1, '1552057231Asadur Zaman.pdf', NULL, '2019-03-08 09:00:31', '2019-03-08 09:00:31'),
(6, 7, 8, 1, NULL, NULL, '2019-03-12 11:33:04', '2019-03-12 11:33:04'),
(7, 8, 4, 2, NULL, NULL, '2019-03-12 11:33:33', '2019-03-12 11:33:33'),
(8, 2, 1, 1, 'file-1552412220-jpg', NULL, '2019-03-12 11:37:00', '2019-03-12 11:37:00'),
(9, 8, 2, 2, NULL, 'Questine1552412331-.jpg', '2019-03-12 11:38:51', '2019-03-12 11:38:51'),
(10, 1, 3, 2, NULL, NULL, '2019-03-12 11:41:53', '2019-03-12 11:41:53'),
(11, 1, 2, 2, NULL, 'Questine1552412547-.jpg', '2019-03-12 11:42:27', '2019-03-12 11:42:27'),
(12, 3, 2, 2, NULL, 'Questine-1552413377-.jpg', '2019-03-12 11:56:17', '2019-03-12 11:56:17'),
(13, 3, 2, 1, 'file-1552413423-.pdf', NULL, '2019-03-12 11:57:03', '2019-03-12 11:57:03'),
(14, 10, 3, 1, 'file---Curriculum_Vitae_of_Sanaur.pdf', NULL, '2019-03-13 11:50:27', '2019-03-13 11:50:27'),
(15, 1, 1, 2, NULL, 'Questine-1552649792-.PNG', '2019-03-15 05:36:32', '2019-03-15 05:36:32'),
(16, 3, 24, 1, 'file--Binary Search Trees.pdf', NULL, '2019-03-16 10:19:47', '2019-03-16 10:19:47'),
(17, 3, 24, 1, 'file--Binary-Search-Tree-Operationss.pdf', NULL, '2019-03-16 10:20:12', '2019-03-16 10:20:12'),
(18, 3, 24, 1, 'file--Breadth-First Search.pptx', NULL, '2019-03-16 10:21:28', '2019-03-16 10:21:28'),
(19, 3, 24, 1, 'file--C12-Binary Search Trees.pdf', NULL, '2019-03-16 10:21:51', '2019-03-16 10:21:51'),
(20, 3, 24, 1, 'file--CSE134_L01.1_pointers.pptx', NULL, '2019-03-16 10:22:48', '2019-03-16 10:22:48'),
(21, 3, 24, 1, 'file--CSE134_L03_pointers.ppt', NULL, '2019-03-16 10:23:09', '2019-03-16 10:23:09'),
(22, 3, 24, 1, 'file--CSE134_L05.1_Linked_list.ppt', NULL, '2019-03-16 10:23:31', '2019-03-16 10:23:31'),
(23, 3, 24, 1, 'file--CSE134_L05.2_Linked_List.ppt', NULL, '2019-03-16 10:23:56', '2019-03-16 10:23:56'),
(24, 3, 24, 1, 'file--Cse134_lecture08_stack.pdf', NULL, '2019-03-16 10:24:16', '2019-03-16 10:24:16'),
(25, 3, 24, 1, 'file--CSE134_Lecture09_Queue.pdf', NULL, '2019-03-16 10:24:38', '2019-03-16 10:24:38'),
(26, 3, 24, 1, 'file--CSE134Graph_Part01.pdf', NULL, '2019-03-16 10:25:00', '2019-03-16 10:25:00'),
(27, 3, 24, 1, 'file--CSE134Graph_Part02.pdf', NULL, '2019-03-16 10:25:26', '2019-03-16 10:25:26'),
(28, 3, 24, 1, 'file--CSE134Lecture02Recursion.ppt', NULL, '2019-03-16 10:25:53', '2019-03-16 10:25:53'),
(29, 3, 24, 1, 'file--CSE134Lecture13BinarySearchTree.pdf', NULL, '2019-03-16 10:26:17', '2019-03-16 10:26:17'),
(30, 3, 24, 1, 'file--CSE134Lecture14BinarySearchTree_Part02.pdf', NULL, '2019-03-16 10:26:38', '2019-03-16 10:26:38'),
(31, 3, 24, 1, 'file--Doubly-Linked-List-with-C-code.pdf', NULL, '2019-03-16 10:27:10', '2019-03-16 10:27:10'),
(32, 3, 24, 1, 'file--heap.pdf', NULL, '2019-03-16 10:29:34', '2019-03-16 10:29:34'),
(33, 3, 24, 1, 'file--Heap_Max_Min.docx', NULL, '2019-03-16 10:29:56', '2019-03-16 10:29:56'),
(34, 3, 24, 1, 'file--HeapPriorityQueue_2.pdf', NULL, '2019-03-16 10:30:16', '2019-03-16 10:30:16'),
(35, 3, 24, 1, 'file--infix-prefix-postfix.pdf', NULL, '2019-03-16 10:32:18', '2019-03-16 10:32:18'),
(36, 3, 24, 1, 'file--Infix-to-Prefix-Postfix.docx', NULL, '2019-03-16 10:33:01', '2019-03-16 10:33:01'),
(37, 3, 24, 1, 'file--Lecture 05_Comparison of Algorithms.pdf', NULL, '2019-03-16 10:33:18', '2019-03-16 10:33:18'),
(38, 3, 24, 1, 'file--Lecture-Memory-Layout-of-C-Process.pptx', NULL, '2019-03-16 10:34:51', '2019-03-16 10:34:51'),
(39, 3, 24, 1, 'file--Linkedlist.ppt', NULL, '2019-03-16 10:35:10', '2019-03-16 10:35:10'),
(40, 3, 24, 1, 'file--Queue_Data_Structures_with_C_code.pdf', NULL, '2019-03-16 10:35:30', '2019-03-16 10:35:30'),
(41, 3, 24, 1, 'file--Singly-Linked-List-With-C-code.pdf', NULL, '2019-03-16 10:35:50', '2019-03-16 10:35:50'),
(42, 3, 24, 1, 'file--Sort_and_Search.pdf', NULL, '2019-03-16 10:36:07', '2019-03-16 10:36:07'),
(43, 3, 21, 1, 'file--Chap 1.1.ppt', NULL, '2019-03-16 10:49:41', '2019-03-16 10:49:41'),
(44, 3, 21, 1, 'file--Chap 1.3.ppt', NULL, '2019-03-16 10:50:58', '2019-03-16 10:50:58'),
(45, 3, 21, 1, 'file--Chap 1.5 - Copy.ppt', NULL, '2019-03-16 10:51:27', '2019-03-16 10:51:27'),
(46, 3, 21, 1, 'file--chap 2.1,2.2.ppt', NULL, '2019-03-16 10:51:41', '2019-03-16 10:51:41'),
(47, 3, 21, 1, 'file--s1.1_propositional_logic.pdf', NULL, '2019-03-16 10:52:00', '2019-03-16 10:52:00'),
(48, 3, 21, 1, 'file--s1.2_propositional_equivalences.pdf', NULL, '2019-03-16 10:52:25', '2019-03-16 10:52:25'),
(49, 3, 21, 1, 'file--s1.3_predicates_quantifiers.pdf', NULL, '2019-03-16 10:52:41', '2019-03-16 10:52:41'),
(50, 3, 21, 1, 'file--s1.5_rules_inferences.pdf', NULL, '2019-03-16 10:53:04', '2019-03-16 10:53:04'),
(51, 3, 21, 1, 'file--s2.1_sets.pdf', NULL, '2019-03-16 10:53:23', '2019-03-16 10:53:23'),
(52, 3, 21, 1, 'file--s2.2_set_operations.pdf', NULL, '2019-03-16 10:53:41', '2019-03-16 10:53:41'),
(53, 3, 21, 1, 'file--s2.3_functions.pdf', NULL, '2019-03-16 10:53:56', '2019-03-16 10:53:56'),
(54, 3, 21, 1, 'file--s2.3_functions.pdf', NULL, '2019-03-16 10:54:14', '2019-03-16 10:54:14'),
(55, 3, 21, 1, 'file--s4.1_mathematical_induction.pdf', NULL, '2019-03-16 10:54:35', '2019-03-16 10:54:35'),
(56, 3, 21, 1, 'file--s8.1-3_relations_representations.pdf', NULL, '2019-03-16 10:54:51', '2019-03-16 10:54:51'),
(57, 3, 21, 1, 'file--s8.4_closures_relations.pdf', NULL, '2019-03-16 10:55:12', '2019-03-16 10:55:12'),
(58, 3, 21, 1, 'file--s8.6_partial_orderings.pdf', NULL, '2019-03-16 10:55:30', '2019-03-16 10:55:30'),
(59, 3, 21, 1, 'file--s9.1_graphs_and_models.pdf', NULL, '2019-03-16 10:55:53', '2019-03-16 10:55:53'),
(60, 3, 21, 1, 'file--s9.2_graph_bipartite.pdf', NULL, '2019-03-16 10:56:14', '2019-03-16 10:56:14'),
(61, 3, 21, 1, 'file--s9.5_Hamilton_paths.pdf', NULL, '2019-03-16 10:56:39', '2019-03-16 10:56:39'),
(62, 3, 21, 1, 'file--s9.2_graph_terminology.pdf', NULL, '2019-03-16 10:58:06', '2019-03-16 10:58:06'),
(63, 3, 21, 1, 'file--s9.3_graph_isomorphism.pdf', NULL, '2019-03-16 10:58:22', '2019-03-16 10:58:22'),
(64, 3, 21, 1, 'file--s9.1_graphs_and_models.pdf', NULL, '2019-03-16 10:58:42', '2019-03-16 10:58:42'),
(65, 3, 21, 1, 'file--s9.2_graph_terminology.pdf', NULL, '2019-03-16 10:59:22', '2019-03-16 10:59:22'),
(66, 3, 21, 1, 'file--s9.3_graph_isomorphism.pdf', NULL, '2019-03-16 11:00:12', '2019-03-16 11:00:12'),
(67, 3, 21, 1, 'file--s9.3_representing_graphs.pdf', NULL, '2019-03-16 11:00:39', '2019-03-16 11:00:39'),
(68, 3, 21, 1, 'file--s9.4_connectivity.pdf', NULL, '2019-03-16 11:01:04', '2019-03-16 11:01:04'),
(69, 3, 21, 1, 'file--s9.5_Hamilton_paths.pdf', NULL, '2019-03-16 11:01:23', '2019-03-16 11:01:23'),
(70, 3, 21, 1, 'file--s9.6_shortest_path_problems Dis.Ma.pdf', NULL, '2019-03-16 11:01:54', '2019-03-16 11:01:54'),
(71, 3, 21, 1, 'file--s9.6_TSP.pdf', NULL, '2019-03-16 11:02:11', '2019-03-16 11:02:11'),
(72, 3, 21, 1, 'file--s10.1_introduction_trees.pdf', NULL, '2019-03-16 11:02:29', '2019-03-16 11:02:29'),
(73, 3, 21, 1, 'file--s10.3_tree_traversal.pdf', NULL, '2019-03-16 11:02:45', '2019-03-16 11:02:45'),
(74, 3, 21, 1, 'file--s10.4_spanning_tree Dis.Ma.pdf', NULL, '2019-03-16 11:02:59', '2019-03-16 11:02:59'),
(75, 3, 21, 1, 'file--s10.5_minimum_spanning_trees Dis.Ma.pdf', NULL, '2019-03-16 11:03:15', '2019-03-16 11:03:15'),
(76, 3, 20, 1, 'file--Average Power theory.pdf', NULL, '2019-03-16 11:36:33', '2019-03-16 11:36:33'),
(77, 3, 20, 1, 'file--group 1 of presentation.pptx', NULL, '2019-03-16 11:42:25', '2019-03-16 11:42:25'),
(78, 3, 20, 1, 'file--group 3 of presentation.pptx', NULL, '2019-03-16 11:42:40', '2019-03-16 11:42:40'),
(79, 3, 20, 1, 'file--group 4 of presentation.pptx', NULL, '2019-03-16 11:42:54', '2019-03-16 11:42:54'),
(80, 3, 20, 1, 'file--Presntation Topics_Spring-16.docx', NULL, '2019-03-16 11:44:49', '2019-03-16 11:44:49'),
(81, 3, 20, 1, 'file--AC fundamentals.docx', NULL, '2019-03-16 11:46:52', '2019-03-16 11:46:52'),
(82, 3, 20, 1, 'file--Series and parallel ac networks RLC.docx', NULL, '2019-03-16 11:47:06', '2019-03-16 11:47:06'),
(83, 3, 22, 1, 'file--Formulae.pdf', NULL, '2019-03-16 11:57:08', '2019-03-16 11:57:08'),
(84, 3, 22, 1, 'file--Homogeneous d.e (lec-5).pdf', NULL, '2019-03-16 11:57:24', '2019-03-16 11:57:24'),
(85, 3, 22, 1, 'file--Lec-1.pdf', NULL, '2019-03-16 11:57:38', '2019-03-16 11:57:38'),
(86, 3, 22, 1, 'file--nede.pdf', NULL, '2019-03-16 11:57:54', '2019-03-16 11:57:54'),
(87, 1, 11, 1, 'file--Chapter 02-BCO.pptx', NULL, '2019-03-16 12:46:44', '2019-03-16 12:46:44'),
(88, 1, 11, 1, 'file--Chapter 03-Number System.pptx', NULL, '2019-03-16 12:47:02', '2019-03-16 12:47:02'),
(89, 1, 11, 1, 'file--Chapter 05-Computer Arithmetic.pptx', NULL, '2019-03-16 12:47:42', '2019-03-16 12:47:42'),
(90, 1, 11, 1, 'file--Chapter 06-Boolean Algebra_ok.pdf', NULL, '2019-03-16 12:48:01', '2019-03-16 12:48:01'),
(91, 1, 11, 1, 'file--L-7 Processor and Memory_u.pptx', NULL, '2019-03-16 12:48:16', '2019-03-16 12:48:16'),
(92, 1, 11, 1, 'file--L-10 Computer Software - u.pptx', NULL, '2019-03-16 12:49:17', '2019-03-16 12:49:17'),
(93, 1, 11, 1, 'file--L-13-DCCN - u.pptx', NULL, '2019-03-16 12:49:32', '2019-03-16 12:49:32'),
(94, 1, 11, 1, 'file--L-14 OS - u.pptx', NULL, '2019-03-16 12:49:45', '2019-03-16 12:49:45'),
(95, 2, 16, 1, 'file--9_switch.ppt', NULL, '2019-03-16 12:55:24', '2019-03-16 12:55:24'),
(96, 2, 16, 1, 'file--Array, Pointer, Structure Passing in a Function.pptx', NULL, '2019-03-16 12:55:41', '2019-03-16 12:55:41'),
(97, 2, 16, 1, 'file--Lecture-1-Introduction to C.pptx', NULL, '2019-03-16 12:55:57', '2019-03-16 12:55:57'),
(98, 2, 16, 1, 'file--Lecture-2.2-C Printf and Scanf.pptx', NULL, '2019-03-16 12:56:36', '2019-03-16 12:56:36'),
(99, 2, 16, 1, 'file--Lecture-2.3-Flowchart.pptx', NULL, '2019-03-16 12:56:57', '2019-03-16 12:56:57'),
(100, 2, 16, 1, 'file--Lecture-3-C Token.pptx', NULL, '2019-03-16 12:57:29', '2019-03-16 12:57:29'),
(101, 2, 16, 1, 'file--Lecture-4.1-C Operators and Expression.pptx', NULL, '2019-03-16 12:57:49', '2019-03-16 12:57:49'),
(102, 2, 16, 1, 'file--Lecture-4.2-C Bit wise Operators and Expression.pptx', NULL, '2019-03-16 12:59:11', '2019-03-16 12:59:11'),
(103, 2, 16, 1, 'file--Lecture-4.3-C Precedence And Associativity Of Operators.pptx', NULL, '2019-03-16 12:59:31', '2019-03-16 12:59:31'),
(104, 2, 16, 1, 'file--Lecture-5-Flowchart.pptx', NULL, '2019-03-16 12:59:48', '2019-03-16 12:59:48'),
(105, 2, 16, 1, 'file--Lecture-6-C Control Statement (1).pptx', NULL, '2019-03-16 13:00:06', '2019-03-16 13:00:06'),
(106, 2, 16, 1, 'file--Lecture-7-C Loop.pptx', NULL, '2019-03-16 13:00:23', '2019-03-16 13:00:23'),
(107, 2, 16, 1, 'file--Lecture-8-C Array.pptx', NULL, '2019-03-16 13:00:39', '2019-03-16 13:00:39'),
(108, 2, 16, 1, 'file--Lecture-9-C Functions.pptx', NULL, '2019-03-16 13:00:57', '2019-03-16 13:00:57'),
(109, 2, 16, 1, 'file--Lecture-10-C Pointer.pptx', NULL, '2019-03-16 13:01:15', '2019-03-16 13:01:15'),
(110, 2, 16, 1, 'file--Lecture-11-C String.pptx', NULL, '2019-03-16 13:01:29', '2019-03-16 13:01:29'),
(111, 2, 16, 1, 'file--Lecture-11-C String.pptx', NULL, '2019-03-16 13:01:46', '2019-03-16 13:01:46'),
(112, 2, 16, 1, 'file--Lecture-13-C Typedef.pptx', NULL, '2019-03-16 13:02:24', '2019-03-16 13:02:24'),
(113, 2, 16, 1, 'file--Lecture-14-C File-IO.pptx', NULL, '2019-03-16 13:02:39', '2019-03-16 13:02:39'),
(114, 2, 16, 1, 'file--Lecture-15-C Preprocessors.pptx', NULL, '2019-03-16 13:02:54', '2019-03-16 13:02:54'),
(115, 4, 32, 1, 'file--Lecture 4-5 Political History of Bangladesh.pptx', NULL, '2019-03-16 13:09:29', '2019-03-16 13:09:29'),
(116, 4, 32, 1, 'file--Lecture 6-7 Orign of the name of Bangladesh.ppt', NULL, '2019-03-16 13:09:46', '2019-03-16 13:09:46'),
(117, 4, 32, 1, 'file--Lecture 9 Foriegn Policy.ppt', NULL, '2019-03-16 13:10:04', '2019-03-16 13:10:04'),
(118, 4, 32, 1, 'file--Lecture 10 Bangladesh Constitution.ppt', NULL, '2019-03-16 13:10:20', '2019-03-16 13:10:20'),
(119, 4, 32, 1, 'file--Lecture 11-12 Organs of Govt..ppt', NULL, '2019-03-16 13:10:39', '2019-03-16 13:10:39'),
(120, 4, 32, 1, 'file--SUggesion-GED.docx', NULL, '2019-03-16 13:11:24', '2019-03-16 13:11:24'),
(121, 4, 26, 1, 'file--A-Report-on-Information-Communication-Technology-ICT-Sector-of-Bangladesh.pdf', NULL, '2019-03-16 13:17:11', '2019-03-16 13:17:11'),
(122, 4, 26, 1, 'file--Boolean Algebra.pdf', NULL, '2019-03-16 13:17:43', '2019-03-16 13:17:43'),
(123, 4, 26, 1, 'file--Computer Arithmetic.pptx', NULL, '2019-03-16 13:18:14', '2019-03-16 13:18:14'),
(124, 4, 26, 1, 'file--LOGIC CIRCUITS.pptx', NULL, '2019-03-16 13:20:26', '2019-03-16 13:20:26'),
(125, 4, 26, 1, 'file--Number System.pptx', NULL, '2019-03-16 13:20:43', '2019-03-16 13:20:43'),
(126, 4, 27, 1, 'file--Applications of Laplace Transforms.pdf', NULL, '2019-03-16 13:47:27', '2019-03-16 13:47:27'),
(127, 4, 27, 1, 'file--HW 1.pdf', NULL, '2019-03-16 13:48:21', '2019-03-16 13:48:21'),
(128, 4, 27, 1, 'file--HW 3 and 4.pdf', NULL, '2019-03-16 13:48:38', '2019-03-16 13:48:38'),
(129, 4, 27, 1, 'file--HW-2.pdf', NULL, '2019-03-16 13:48:53', '2019-03-16 13:48:53'),
(130, 4, 27, 1, 'file--Inverse Laplace Transform.pdf', NULL, '2019-03-16 13:49:08', '2019-03-16 13:49:08'),
(131, 4, 27, 1, 'file--Lec-8.pdf', NULL, '2019-03-16 13:49:22', '2019-03-16 13:49:22'),
(132, 4, 27, 1, 'file--Lec-10.pdf', NULL, '2019-03-16 13:49:36', '2019-03-16 13:49:36'),
(133, 4, 27, 1, 'file--math equations.docx', NULL, '2019-03-16 13:49:50', '2019-03-16 13:49:50'),
(134, 4, 30, 1, 'file--UML_for_Java_Programmers-Book.pdf', NULL, '2019-03-16 13:52:12', '2019-03-16 13:52:12'),
(135, 4, 30, 1, 'file--lecture inheritance.pptx', NULL, '2019-03-16 13:52:48', '2019-03-16 13:52:48'),
(136, 4, 30, 1, 'file--UML Class Diagram Relationships.pdf', NULL, '2019-03-16 13:53:01', '2019-03-16 13:53:01'),
(137, 4, 30, 1, 'file--uml.pptx', NULL, '2019-03-16 13:53:17', '2019-03-16 13:53:17'),
(138, 4, 30, 1, 'file--Lecture_1_2.pptx', NULL, '2019-03-16 13:53:41', '2019-03-16 13:53:41'),
(139, 4, 26, 1, 'file--Lecture_3 jaba.pptx', NULL, '2019-03-16 13:53:53', '2019-03-16 13:53:53'),
(140, 4, 30, 1, 'file--Lecture_4_5.pptx', NULL, '2019-03-16 13:54:11', '2019-03-16 13:54:11'),
(141, 4, 30, 1, 'file--Lecture_6.pptx', NULL, '2019-03-16 13:54:27', '2019-03-16 13:54:27'),
(142, 4, 30, 1, 'file--Lecture_7.pptx', NULL, '2019-03-16 13:54:44', '2019-03-16 13:54:44'),
(143, 4, 30, 1, 'file--Lecture_6.pptx', NULL, '2019-03-16 13:54:57', '2019-03-16 13:54:57'),
(144, 4, 30, 1, 'file--Lecture_8.pptx', NULL, '2019-03-16 13:55:10', '2019-03-16 13:55:10'),
(145, 4, 30, 1, 'file--Lecture_9.pptx', NULL, '2019-03-16 13:55:22', '2019-03-16 13:55:22'),
(146, 5, 37, 1, 'file--Chapter 5 - Semiconductor Physics.pdf', NULL, '2019-03-17 02:59:55', '2019-03-17 02:59:55'),
(147, 5, 37, 1, 'file--Chapter 06 - Semiconductor Diode.pdf', NULL, '2019-03-17 03:00:10', '2019-03-17 03:00:10'),
(148, 5, 37, 1, 'file--Chapter 08 - Transistor.pdf', NULL, '2019-03-17 03:00:24', '2019-03-17 03:00:24'),
(149, 5, 37, 1, 'file--Chapter 09 - Transistor Biasing.pdf', NULL, '2019-03-17 03:00:43', '2019-03-17 03:00:43'),
(150, 5, 37, 1, 'file--Chapter 10 - Single Stage Transistor Amplifiers.pdf', NULL, '2019-03-17 03:00:57', '2019-03-17 03:00:57'),
(151, 5, 37, 1, 'file--Chapter 11 - Multistage Transistor Amplifiers.pdf', NULL, '2019-03-17 03:01:14', '2019-03-17 03:01:14'),
(152, 5, 37, 1, 'file--Chapter 11 - Multistage Transistor Amplifiers.pdf', NULL, '2019-03-17 03:01:29', '2019-03-17 03:01:29'),
(153, 5, 37, 1, 'file--Chapter 13 - Amplifiers with Negative Feedback.pdf', NULL, '2019-03-17 03:01:45', '2019-03-17 03:01:45'),
(154, 5, 37, 1, 'file--Chapter 14 - Sinusoidal Oscillators .pdf', NULL, '2019-03-17 03:02:01', '2019-03-17 03:02:01'),
(155, 5, 37, 1, 'file--Lecture 4.pdf', NULL, '2019-03-17 03:02:17', '2019-03-17 03:02:17'),
(156, 5, 37, 1, 'file--Lecture 5.pdf', NULL, '2019-03-17 03:02:34', '2019-03-17 03:02:34'),
(157, 5, 37, 1, 'file--Lecture 6.pdf', NULL, '2019-03-17 03:02:48', '2019-03-17 03:02:48'),
(158, 5, 37, 1, 'file--Lecture 7.pdf', NULL, '2019-03-17 03:03:08', '2019-03-17 03:03:08'),
(159, 5, 37, 1, 'file--Lecture 8.pdf', NULL, '2019-03-17 03:03:30', '2019-03-17 03:03:30'),
(160, 5, 37, 1, 'file--Sheet 1.pdf', NULL, '2019-03-17 03:03:44', '2019-03-17 03:03:44'),
(161, 5, 37, 1, 'file--Sheet 2.pdf', NULL, '2019-03-17 03:03:58', '2019-03-17 03:03:58'),
(162, 5, 35, 1, 'file--1_bfs.ppt', NULL, '2019-03-17 03:08:22', '2019-03-17 03:08:22'),
(163, 5, 35, 1, 'file--2_dfs.ppt', NULL, '2019-03-17 03:08:35', '2019-03-17 03:08:35'),
(164, 5, 35, 1, 'file--3_topological_sort.ppt', NULL, '2019-03-17 03:08:49', '2019-03-17 03:08:49'),
(165, 5, 35, 1, 'file--6_mst_prim.ppt', NULL, '2019-03-17 03:09:06', '2019-03-17 03:09:06'),
(166, 5, 35, 1, 'file--7_mst_kruskal.ppt', NULL, '2019-03-17 03:09:26', '2019-03-17 03:09:26'),
(167, 5, 35, 1, 'file--8_dijkstra.ppt', NULL, '2019-03-17 03:09:42', '2019-03-17 03:09:42'),
(168, 5, 35, 1, 'file--13_greedy I.ppt', NULL, '2019-03-17 03:09:58', '2019-03-17 03:09:58'),
(169, 5, 35, 1, 'file--InsertionSort.pptx', NULL, '2019-03-17 03:11:43', '2019-03-17 03:11:43'),
(170, 5, 35, 1, 'file--Lec-2 Searching.ppt', NULL, '2019-03-17 03:12:37', '2019-03-17 03:12:37'),
(171, 5, 35, 1, 'file--Lecture 1.ppt', NULL, '2019-03-17 03:13:02', '2019-03-17 03:13:02'),
(172, 5, 35, 1, 'file--MergesortQuickSort.ppt', NULL, '2019-03-17 03:13:23', '2019-03-17 03:13:23'),
(173, 5, 35, 1, 'file--sorting_insertion_bubble_selection.pptx', NULL, '2019-03-17 03:13:55', '2019-03-17 03:13:55'),
(174, 5, 34, 1, 'file--Binary search.docx', NULL, '2019-03-17 03:42:04', '2019-03-17 03:42:04'),
(175, 5, 34, 1, 'file--BubbleSort.docx', NULL, '2019-03-17 03:42:21', '2019-03-17 03:42:21'),
(176, 5, 34, 1, 'file--Insertionn Sort + Binary search.docx', NULL, '2019-03-17 03:42:34', '2019-03-17 03:42:34'),
(177, 5, 34, 1, 'file--Insertionn Sort.docx', NULL, '2019-03-17 03:42:50', '2019-03-17 03:42:50'),
(178, 5, 34, 1, 'file--Linear search with comment.docx', NULL, '2019-03-17 03:43:04', '2019-03-17 03:43:04'),
(179, 5, 34, 1, 'file--Linear search.docx', NULL, '2019-03-17 03:43:18', '2019-03-17 03:43:18'),
(180, 5, 34, 1, 'file--Linear search with comment.docx', NULL, '2019-03-17 03:43:32', '2019-03-17 03:43:32'),
(181, 5, 34, 1, 'file--Linear search.docx', NULL, '2019-03-17 03:43:48', '2019-03-17 03:43:48'),
(182, 5, 34, 1, 'file--Merge_sort.docx', NULL, '2019-03-17 03:44:01', '2019-03-17 03:44:01'),
(183, 5, 34, 1, 'file--SelectionSort.docx', NULL, '2019-03-17 03:44:16', '2019-03-17 03:44:16'),
(184, 5, 36, 1, 'file--collection of data.docx', NULL, '2019-03-17 03:47:56', '2019-03-17 03:47:56'),
(185, 5, 36, 1, 'file--Correlation and Regression.docx', NULL, '2019-03-17 03:48:10', '2019-03-17 03:48:10'),
(186, 5, 36, 1, 'file--Correlation and Regression.pdf', NULL, '2019-03-17 03:48:28', '2019-03-17 03:48:28'),
(187, 5, 36, 1, 'file--Correlation.pdf', NULL, '2019-03-17 03:49:03', '2019-03-17 03:49:03'),
(188, 5, 36, 1, 'file--Measures of Central Tendency pdf.pdf', NULL, '2019-03-17 03:49:57', '2019-03-17 03:49:57'),
(189, 5, 36, 1, 'file--Measures of Central Tendency.docx', NULL, '2019-03-17 03:50:19', '2019-03-17 03:50:19'),
(190, 5, 36, 1, 'file--Measures of Dispersion.docx', NULL, '2019-03-17 03:50:34', '2019-03-17 03:50:34'),
(191, 5, 36, 1, 'file--Measures of Dispersion.pdf', NULL, '2019-03-17 03:50:49', '2019-03-17 03:50:49'),
(192, 5, 36, 1, 'file--Measures Of Dispersions_full.pdf', NULL, '2019-03-17 03:51:25', '2019-03-17 03:51:25'),
(193, 5, 36, 1, 'file--measures-of-location pdf.pdf', NULL, '2019-03-17 03:51:56', '2019-03-17 03:51:56'),
(194, 5, 36, 1, 'file--measures-of-location pdf.pdf', NULL, '2019-03-17 03:52:43', '2019-03-17 03:52:43'),
(195, 5, 36, 1, 'file--probability-lec_updated.pdf', NULL, '2019-03-17 03:53:03', '2019-03-17 03:53:03'),
(196, 5, 36, 1, 'file--Regression analysis-nw.pdf', NULL, '2019-03-17 03:53:20', '2019-03-17 03:53:20'),
(197, 6, 41, 1, 'file--chap1.ppt', NULL, '2019-03-17 04:00:46', '2019-03-17 04:00:46'),
(198, 6, 41, 1, 'file--chap2.ppt', NULL, '2019-03-17 04:01:03', '2019-03-17 04:01:03'),
(199, 6, 41, 1, 'file--chap3.ppt', NULL, '2019-03-17 04:01:28', '2019-03-17 04:01:28'),
(200, 6, 41, 1, 'file--chap4.ppt', NULL, '2019-03-17 04:01:50', '2019-03-17 04:01:50'),
(201, 6, 41, 1, 'file--chap5.ppt', NULL, '2019-03-17 04:02:15', '2019-03-17 04:02:15'),
(202, 6, 41, 1, 'file--chap6.ppt', NULL, '2019-03-17 04:02:29', '2019-03-17 04:02:29'),
(203, 6, 41, 1, 'file--chap6.ppt', NULL, '2019-03-17 04:02:45', '2019-03-17 04:02:45'),
(204, 6, 41, 1, 'file--chap7.ppt', NULL, '2019-03-17 04:03:02', '2019-03-17 04:03:02'),
(205, 6, 41, 1, 'file--chap10.ppt', NULL, '2019-03-17 04:03:15', '2019-03-17 04:03:15'),
(206, 6, 38, 1, 'file--BioinformaticsFinalTopics.docx', NULL, '2019-03-17 04:09:14', '2019-03-17 04:09:14'),
(207, 6, 38, 1, 'file--Bioinformatics-Lesson 01.pdf', NULL, '2019-03-17 04:09:28', '2019-03-17 04:09:28'),
(208, 6, 38, 1, 'file--Bioinformatics-Lesson 03.pptx', NULL, '2019-03-17 04:10:11', '2019-03-17 04:10:11'),
(209, 6, 38, 1, 'file--Bioinformatics-Lesson 04.pptx', NULL, '2019-03-17 04:10:28', '2019-03-17 04:10:28'),
(210, 6, 38, 1, 'file--Bioinformatics-Lesson 05.pptx', NULL, '2019-03-17 04:10:46', '2019-03-17 04:10:46'),
(211, 6, 38, 1, 'file--Bioinformatics-Lesson 06- DataBase Search (FASTA).pptx', NULL, '2019-03-17 04:10:57', '2019-03-17 04:10:57'),
(212, 6, 38, 1, 'file--Bioinformatics-Lesson 07 -Hidden Markov Model.pptx', NULL, '2019-03-17 04:11:12', '2019-03-17 04:11:12'),
(213, 6, 38, 1, 'file--bioinfromatics-localalignment-140922081913-phpapp01.pptx', NULL, '2019-03-17 04:11:29', '2019-03-17 04:11:29'),
(214, 6, 38, 1, 'file--SuggestionForMidTerm.pdf', NULL, '2019-03-17 04:12:17', '2019-03-17 04:12:17'),
(215, 6, 39, 1, 'file--01.-Numerical-Integration.pdf', NULL, '2019-03-17 04:17:25', '2019-03-17 04:17:25'),
(216, 6, 39, 1, 'file--02.-Linear-Equations.pdf', NULL, '2019-03-17 04:17:38', '2019-03-17 04:17:38'),
(217, 6, 39, 1, 'file--03._Finite_Difference_Interpolation.pdf', NULL, '2019-03-17 04:17:51', '2019-03-17 04:17:51'),
(218, 6, 39, 1, 'file--Chapter.pdf', NULL, '2019-03-17 04:18:05', '2019-03-17 04:18:05'),
(219, 6, 39, 1, 'file--Errors and line of best fit.pdf', NULL, '2019-03-17 04:18:21', '2019-03-17 04:18:21'),
(220, 6, 39, 1, 'file--For Student Curve Fitting.pdf', NULL, '2019-03-17 04:18:37', '2019-03-17 04:18:37'),
(221, 6, 39, 1, 'file--Maximum & Minimum.pdf', NULL, '2019-03-17 04:19:33', '2019-03-17 04:19:33'),
(222, 6, 39, 1, 'file--Maximum__Minimum.pdf', NULL, '2019-03-17 04:19:47', '2019-03-17 04:19:47'),
(223, 6, 39, 1, 'file--Numerical Differentiation.pdf', NULL, '2019-03-17 04:20:02', '2019-03-17 04:20:02'),
(224, 6, 39, 1, 'file--Numerical Integration.pdf', NULL, '2019-03-17 04:20:16', '2019-03-17 04:20:16'),
(225, 6, 39, 1, 'file--Numerical_Differentiation-sharif.pdf', NULL, '2019-03-17 04:20:34', '2019-03-17 04:20:34'),
(226, 6, 39, 1, 'file--Runge_kutta.pdf', NULL, '2019-03-17 04:20:46', '2019-03-17 04:20:46'),
(227, 6, 39, 1, 'file--Solution of Algebric & Trancendental Equation.pdf', NULL, '2019-03-17 04:21:00', '2019-03-17 04:21:00'),
(228, 6, 42, 1, 'file--Lecture 2.ppt', NULL, '2019-03-17 04:22:46', '2019-03-17 04:22:46'),
(229, 6, 42, 1, 'file--Lecture 4.pptx', NULL, '2019-03-17 04:23:26', '2019-03-17 04:23:26'),
(230, 6, 42, 1, 'file--Lecture 5.pptx', NULL, '2019-03-17 04:23:42', '2019-03-17 04:23:42'),
(231, 6, 42, 1, 'file--Lecture 6.pptx', NULL, '2019-03-17 04:23:55', '2019-03-17 04:23:55'),
(232, 6, 42, 1, 'file--Lecture 7.pptx', NULL, '2019-03-17 04:24:12', '2019-03-17 04:24:12'),
(233, 6, 42, 1, 'file--Lecture 8.pptx', NULL, '2019-03-17 04:24:24', '2019-03-17 04:24:24'),
(234, 6, 42, 1, 'file--Lecture 9.pptx', NULL, '2019-03-17 04:24:40', '2019-03-17 04:24:40'),
(235, 6, 42, 1, 'file--Lecture 10.pptx', NULL, '2019-03-17 04:24:55', '2019-03-17 04:24:55'),
(236, 6, 40, 1, 'file--stack.docx', NULL, '2019-03-17 04:26:22', '2019-03-17 04:26:22'),
(237, 8, 49, 1, 'file--CAO_lecutre1.ppt', NULL, '2019-03-17 04:41:27', '2019-03-17 04:41:27'),
(238, 8, 49, 1, 'file--CAO_lecutre2.ppt', NULL, '2019-03-17 04:41:45', '2019-03-17 04:41:45'),
(239, 8, 49, 1, 'file--CAO_lecutre3.ppt', NULL, '2019-03-17 04:42:03', '2019-03-17 04:42:03'),
(240, 8, 49, 1, 'file--CAO_lecutre4 Processor basics.ppt', NULL, '2019-03-17 04:42:18', '2019-03-17 04:42:18'),
(241, 8, 49, 1, 'file--CAO_lecutre5 Datapath Design.ppt', NULL, '2019-03-17 04:42:34', '2019-03-17 04:42:34'),
(242, 8, 49, 1, 'file--CAO_lecutre5 Datapath Design.ppt', NULL, '2019-03-17 04:42:52', '2019-03-17 04:42:52'),
(243, 8, 49, 1, 'file--CAO_lecutre6 Instruction pipelining.ppt', NULL, '2019-03-17 04:43:10', '2019-03-17 04:43:10'),
(244, 8, 49, 1, 'file--CAO_lecutre7 Cache Memory.ppt', NULL, '2019-03-17 04:43:29', '2019-03-17 04:43:29'),
(245, 8, 49, 1, 'file--CAO_lecutre8 Virtual Memory.ppt', NULL, '2019-03-17 04:43:45', '2019-03-17 04:43:45'),
(246, 8, 50, 1, 'file--Cost.ppt', NULL, '2019-03-17 05:51:40', '2019-03-17 05:51:40'),
(247, 8, 50, 1, 'file--CS&PS.pptx', NULL, '2019-03-17 05:51:53', '2019-03-17 05:51:53'),
(248, 8, 50, 1, 'file--Demand.pdf', NULL, '2019-03-17 05:52:07', '2019-03-17 05:52:07'),
(249, 8, 50, 1, 'file--Eco Lecture - 5.docx', NULL, '2019-03-17 05:52:20', '2019-03-17 05:52:20'),
(250, 8, 50, 1, 'file--Eco. Lecture - 4.docx', NULL, '2019-03-17 05:52:34', '2019-03-17 05:52:34'),
(251, 8, 50, 1, 'file--Eco. Lecture-1.docx', NULL, '2019-03-17 05:52:49', '2019-03-17 05:52:49'),
(252, 8, 50, 1, 'file--eco.pdf', NULL, '2019-03-17 05:53:03', '2019-03-17 05:53:03'),
(253, 8, 50, 1, 'file--Economic Systems.pdf', NULL, '2019-03-17 05:53:15', '2019-03-17 05:53:15'),
(254, 8, 50, 1, 'file--Economics & its Branches.pdf', NULL, '2019-03-17 05:53:29', '2019-03-17 05:53:29'),
(255, 8, 50, 1, 'file--Economics & its Branches.pdf', NULL, '2019-03-17 05:53:44', '2019-03-17 05:53:44'),
(256, 8, 50, 1, 'file--Equilibrium.pdf', NULL, '2019-03-17 05:54:15', '2019-03-17 05:54:15'),
(257, 8, 50, 1, 'file--Fiscal Policy.docx', NULL, '2019-03-17 05:54:33', '2019-03-17 05:54:33'),
(258, 8, 50, 1, 'file--Fundamental Problems of Economics.pdf', NULL, '2019-03-17 05:55:13', '2019-03-17 05:55:13'),
(259, 8, 50, 1, 'file--GDP,GNP.docx', NULL, '2019-03-17 05:55:27', '2019-03-17 05:55:27'),
(260, 8, 50, 1, 'file--GDP.docx', NULL, '2019-03-17 05:55:40', '2019-03-17 05:55:40'),
(261, 8, 50, 1, 'file--inflation deflation,unemployment.docx', NULL, '2019-03-17 05:55:54', '2019-03-17 05:55:54'),
(262, 8, 50, 1, 'file--Inflation,_Deflation,_Unemployment,_GNP,_Economic_growth.docx', NULL, '2019-03-17 05:56:10', '2019-03-17 05:56:10'),
(263, 8, 50, 1, 'file--Market Structure.pdf', NULL, '2019-03-17 05:56:26', '2019-03-17 05:56:26'),
(264, 8, 51, 1, 'file--Monetary Policy.pdf', NULL, '2019-03-17 05:56:41', '2019-03-17 05:56:41'),
(265, 8, 50, 1, 'file--Monetary Policy.pdf', NULL, '2019-03-17 05:56:57', '2019-03-17 05:56:57'),
(266, 8, 50, 1, 'file--MONOPOLY OLIGOPOLY.docx', NULL, '2019-03-17 05:57:08', '2019-03-17 05:57:08'),
(267, 8, 50, 1, 'file--MP,TP,AP.docx', NULL, '2019-03-17 05:57:24', '2019-03-17 05:57:24'),
(268, 8, 50, 1, 'file--Returns to Scale.pdf', NULL, '2019-03-17 05:57:40', '2019-03-17 05:57:40'),
(269, 8, 50, 1, 'file--Supply.pdf', NULL, '2019-03-17 05:57:56', '2019-03-17 05:57:56'),
(270, 8, 50, 1, 'file--Utility.pdf', NULL, '2019-03-17 05:58:09', '2019-03-17 05:58:09'),
(271, 8, 52, 1, 'file--Bankers algo.pdf', NULL, '2019-03-17 06:00:13', '2019-03-17 06:00:13'),
(272, 8, 52, 1, 'file--Bankers Algorithm.ppt', NULL, '2019-03-17 06:00:32', '2019-03-17 06:00:32'),
(273, 8, 52, 1, 'file--ch1_updated.ppt', NULL, '2019-03-17 06:00:48', '2019-03-17 06:00:48'),
(274, 8, 52, 1, 'file--ch7_updated.ppt', NULL, '2019-03-17 06:01:29', '2019-03-17 06:01:29'),
(275, 8, 52, 1, 'file--Chapter 3_updated_sh.pptx', NULL, '2019-03-17 06:05:08', '2019-03-17 06:05:08'),
(276, 8, 52, 1, 'file--Chapter-8(Memory)_Updated.ppt', NULL, '2019-03-17 06:05:25', '2019-03-17 06:05:25'),
(277, 8, 52, 1, 'file--Chapter-8(Memory)_Updated.ppt', NULL, '2019-03-17 06:05:43', '2019-03-17 06:05:43'),
(278, 8, 51, 1, 'file--DFD Exercises.pdf', NULL, '2019-03-17 06:09:31', '2019-03-17 06:09:31'),
(279, 8, 51, 1, 'file--Lectures on critical path analysis.pdf', NULL, '2019-03-17 06:09:46', '2019-03-17 06:09:46'),
(280, 8, 51, 1, 'file--SAD_Lecture_1.pptx', NULL, '2019-03-17 06:09:59', '2019-03-17 06:09:59'),
(281, 8, 51, 1, 'file--SAD_Lecture_2.pptx', NULL, '2019-03-17 06:10:14', '2019-03-17 06:10:14'),
(282, 8, 51, 1, 'file--SAD_Lecture_3.pptx', NULL, '2019-03-17 06:10:28', '2019-03-17 06:10:28'),
(283, 8, 51, 1, 'file--SAD_Lecture_4.pptx', NULL, '2019-03-17 06:10:46', '2019-03-17 06:10:46'),
(284, 8, 51, 1, 'file--SAD_Lecture_7.pptx', NULL, '2019-03-17 06:11:04', '2019-03-17 06:11:04'),
(285, 8, 51, 1, 'file--SAD_Lecture_8.pptx', NULL, '2019-03-17 06:11:21', '2019-03-17 06:11:21'),
(286, 8, 51, 1, 'file--SAD_Lecture_9.pptx', NULL, '2019-03-17 06:11:37', '2019-03-17 06:11:37'),
(287, 8, 51, 1, 'file--SAD_Lecture_11.pptx', NULL, '2019-03-17 06:11:51', '2019-03-17 06:11:51'),
(288, 8, 51, 1, 'file--SAD_Lecture_12.pptx', NULL, '2019-03-17 06:12:05', '2019-03-17 06:12:05'),
(289, 8, 51, 1, 'file--SAD_Lecture_12.pptx', NULL, '2019-03-17 06:12:21', '2019-03-17 06:12:21'),
(290, 8, 51, 1, 'file--SAD_Lecture_13.ppt', NULL, '2019-03-17 06:12:35', '2019-03-17 06:12:35'),
(291, 10, 62, 1, 'file--Topic - 1 (Introduction) [11.01.18].ppt', NULL, '2019-03-17 07:47:07', '2019-03-17 07:47:07'),
(292, 10, 62, 1, 'file--Topic - 2 (Intelligent Agents) [24.01.18].ppt', NULL, '2019-03-17 07:47:25', '2019-03-17 07:47:25'),
(293, 10, 62, 1, 'file--Topic - 5 (Game Playing) [12.05.16].ppt', NULL, '2019-03-17 07:48:31', '2019-03-17 07:48:31'),
(294, 10, 62, 1, 'file--Topic - 8 (Natural Language Processing) [12.05.16].ppt', NULL, '2019-03-17 07:49:22', '2019-03-17 07:49:22'),
(295, 10, 62, 1, 'file--Topic - 8 (Natural Language Processing) [21.11.17] (1).ppt', NULL, '2019-03-17 07:49:43', '2019-03-17 07:49:43'),
(296, 10, 62, 1, 'file--Topic - 8 (Natural Language Processing) [21.11.17].ppt', NULL, '2019-03-17 07:50:00', '2019-03-17 07:50:00'),
(297, 10, 59, 1, 'file--Lecture-01_Introduction.pptx', NULL, '2019-03-17 08:02:29', '2019-03-17 08:02:29'),
(298, 10, 59, 1, 'file--Lecture-02_HTTP_Protocol.pptx', NULL, '2019-03-17 08:02:44', '2019-03-17 08:02:44'),
(299, 10, 59, 1, 'file--Lecture-03_Requirement_Engineering.pptx', NULL, '2019-03-17 08:02:59', '2019-03-17 08:02:59'),
(300, 10, 59, 1, 'file--Lecture-04_Web_Architecture.ppt', NULL, '2019-03-17 08:03:17', '2019-03-17 08:03:17'),
(301, 10, 59, 1, 'file--Lecture-06_CSS (Cascading Style Sheet Edited) (1).pptx', NULL, '2019-03-17 08:04:22', '2019-03-17 08:04:22'),
(302, 10, 59, 1, 'file--Lecture-06_CSS (Cascading Style Sheet Edited).pptx', NULL, '2019-03-17 08:04:37', '2019-03-17 08:04:37'),
(303, 10, 59, 1, 'file--Lecture-07_CSS (Cascading Style Sheet Edited).pptx', NULL, '2019-03-17 08:05:48', '2019-03-17 08:05:48'),
(304, 10, 59, 1, 'file--Lecture-08_HTML_LAYOUT.pptx', NULL, '2019-03-17 08:06:32', '2019-03-17 08:06:32'),
(305, 10, 59, 1, 'file--Lecture-09_HTML(Div_Tags).pptx', NULL, '2019-03-17 08:06:53', '2019-03-17 08:06:53'),
(306, 10, 59, 1, 'file--Lecture-10_Testing.pptx', NULL, '2019-03-17 08:07:10', '2019-03-17 08:07:10'),
(307, 10, 59, 1, 'file--Web Engineering.pptx', NULL, '2019-03-17 08:07:30', '2019-03-17 08:07:30'),
(308, 10, 60, 1, 'file--Lecture 1.ppt', NULL, '2019-03-17 08:15:58', '2019-03-17 08:15:58'),
(309, 10, 60, 1, 'file--Lecture 2.ppt', NULL, '2019-03-17 08:16:25', '2019-03-17 08:16:25'),
(310, 10, 60, 1, 'file--Lecture 3.ppt', NULL, '2019-03-17 08:16:43', '2019-03-17 08:16:43'),
(311, 10, 60, 1, 'file--Lecture 3.ppt', NULL, '2019-03-17 08:16:56', '2019-03-17 08:16:56'),
(312, 10, 60, 1, 'file--Lecture 4.ppt', NULL, '2019-03-17 08:17:15', '2019-03-17 08:17:15'),
(313, 10, 60, 1, 'file--Lecture 5 Introduction to Probability Distribution.pdf', NULL, '2019-03-17 08:17:42', '2019-03-17 08:17:42'),
(314, 10, 60, 1, 'file--Lecture 6 Monte Carlo Simulation.ppt', NULL, '2019-03-17 08:18:18', '2019-03-17 08:18:18'),
(315, 10, 60, 1, 'file--Lecture 7 Telephony System.ppt', NULL, '2019-03-17 08:18:53', '2019-03-17 08:18:53'),
(316, 10, 60, 1, 'file--Lecture 7 Telephony System.ppt', NULL, '2019-03-17 08:19:13', '2019-03-17 08:19:13'),
(317, 10, 60, 1, 'file--Lecture 8.ppt', NULL, '2019-03-17 08:20:08', '2019-03-17 08:20:08'),
(318, 10, 60, 1, 'file--Lecture 9.ppt', NULL, '2019-03-17 08:20:26', '2019-03-17 08:20:26'),
(319, 10, 60, 1, 'file--Lecture 9.ppt', NULL, '2019-03-17 08:20:50', '2019-03-17 08:20:50'),
(320, 10, 60, 1, 'file--Lecture 10.ppt', NULL, '2019-03-17 08:21:28', '2019-03-17 08:21:28'),
(321, 10, 60, 1, 'file--Lecture 10.ppt', NULL, '2019-03-17 08:21:48', '2019-03-17 08:21:48'),
(322, 10, 60, 1, 'file--Lecture 11 Petri Net .pptx', NULL, '2019-03-17 08:22:04', '2019-03-17 08:22:04'),
(323, 10, 60, 1, 'file--simulation_lecture04.pdf', NULL, '2019-03-17 08:23:01', '2019-03-17 08:23:01'),
(324, 10, 60, 1, 'file--simulation_petrinet.pdf', NULL, '2019-03-17 08:23:17', '2019-03-17 08:23:17'),
(325, 11, 68, 1, 'file--2D Geometric Transformation.pdf', NULL, '2019-03-17 08:36:47', '2019-03-17 08:36:47'),
(326, 11, 68, 1, 'file--2D transformation.ppt', NULL, '2019-03-17 08:37:06', '2019-03-17 08:37:06'),
(327, 11, 68, 1, 'file--2D TRANSFORMATIONS.pdf', NULL, '2019-03-17 08:37:35', '2019-03-17 08:37:35'),
(328, 11, 68, 1, 'file--3D-transformation.pptx', NULL, '2019-03-17 08:38:00', '2019-03-17 08:38:00'),
(329, 11, 68, 1, 'file--Anti-aliasing (2).pdf', NULL, '2019-03-17 08:38:14', '2019-03-17 08:38:14'),
(330, 11, 68, 1, 'file--ANTI-ALIASING.pdf', NULL, '2019-03-17 08:38:32', '2019-03-17 08:38:32'),
(331, 11, 68, 1, 'file--Bresenham’s line drawing algorithm.ppt', NULL, '2019-03-17 08:38:49', '2019-03-17 08:38:49'),
(332, 11, 64, 1, 'file--Confusion MAtrix.pdf', NULL, '2019-03-17 08:56:23', '2019-03-17 08:56:23'),
(333, 11, 64, 1, 'file--datamining-lect1.pptx', NULL, '2019-03-17 08:56:37', '2019-03-17 08:56:37'),
(334, 11, 64, 1, 'file--Lecture-3.pptx', NULL, '2019-03-17 08:56:51', '2019-03-17 08:56:51'),
(335, 11, 64, 1, 'file--Lesson-2-Data-Preparation.pdf', NULL, '2019-03-17 08:57:07', '2019-03-17 08:57:07'),
(336, 11, 64, 1, 'file--Lesson-3-Classification-and-Prediction.pdf', NULL, '2019-03-17 08:57:21', '2019-03-17 08:57:21'),
(337, 11, 64, 1, 'file--Lesson-4-Classification-Decision-Trees.pdf', NULL, '2019-03-17 08:57:40', '2019-03-17 08:57:40'),
(338, 11, 64, 1, 'file--Lesson-5-Classification-Bayesian.pdf', NULL, '2019-03-17 08:57:54', '2019-03-17 08:57:54'),
(339, 11, 64, 1, 'file--Supervised vs unsupervised .pdf', NULL, '2019-03-17 08:58:12', '2019-03-17 08:58:12'),
(340, 11, 64, 1, 'file--CSE423-Lecture 3.pdf', NULL, '2019-03-17 09:08:03', '2019-03-17 09:08:03'),
(341, 11, 65, 1, 'file--CSE423-Lecture 3.pdf', NULL, '2019-03-17 09:08:20', '2019-03-17 09:08:20'),
(342, 11, 65, 1, 'file--CSE423-Lecture 4.pdf', NULL, '2019-03-17 09:08:34', '2019-03-17 09:08:34'),
(343, 11, 65, 1, 'file--CSE423-Lecture 4.pdf', NULL, '2019-03-17 09:08:55', '2019-03-17 09:08:55'),
(344, 11, 65, 1, 'file--CSE423-Lecture 5.pdf', NULL, '2019-03-17 09:09:36', '2019-03-17 09:09:36'),
(345, 11, 65, 1, 'file--CSE423-Lecture 6.pdf', NULL, '2019-03-17 09:09:48', '2019-03-17 09:09:48'),
(346, 11, 65, 1, 'file--CSE423-Lecture 8.pdf', NULL, '2019-03-17 09:10:20', '2019-03-17 09:10:20'),
(347, 11, 65, 1, 'file--CSE423-Lecture 8.pdf', NULL, '2019-03-17 09:10:36', '2019-03-17 09:10:36'),
(348, 11, 65, 1, 'file--CSE423-Lecture 9.pdf', NULL, '2019-03-17 09:10:49', '2019-03-17 09:10:49'),
(349, 11, 65, 1, 'file--CSE423-Lecture 10(1).pdf', NULL, '2019-03-17 09:11:05', '2019-03-17 09:11:05'),
(350, 11, 65, 1, 'file--CSE423-Lecture 10(2).pdf', NULL, '2019-03-17 09:11:19', '2019-03-17 09:11:19'),
(351, 11, 65, 1, 'file--The memory of the Atmel AVR processors is a Modified Harvard architecture.docx', NULL, '2019-03-17 09:11:33', '2019-03-17 09:11:33'),
(352, 9, 57, 1, 'file--Chapter 2.pdf', NULL, '2019-03-18 05:45:58', '2019-03-18 05:45:58'),
(353, 9, 57, 1, 'file--Code Generation.pptx', NULL, '2019-03-18 05:46:18', '2019-03-18 05:46:18'),
(354, 9, 57, 1, 'file--Compiler Design .ppt', NULL, '2019-03-18 05:46:33', '2019-03-18 05:46:33'),
(355, 9, 57, 1, 'file--DFA + NFA.pptx', NULL, '2019-03-18 05:46:48', '2019-03-18 05:46:48'),
(356, 9, 57, 1, 'file--Intermediate Code Generation.pptx', NULL, '2019-03-18 05:47:04', '2019-03-18 05:47:04'),
(357, 9, 57, 1, 'file--Lexical Analysis.pptx', NULL, '2019-03-18 05:47:20', '2019-03-18 05:47:20'),
(358, 9, 57, 1, 'file--Regular Expression Example.pdf', NULL, '2019-03-18 05:47:38', '2019-03-18 05:47:38'),
(359, 9, 57, 1, 'file--Regular Expression Practice Sheet.pdf', NULL, '2019-03-18 05:47:56', '2019-03-18 05:47:56'),
(360, 9, 57, 1, 'file--Regular Expression.pptx', NULL, '2019-03-18 05:48:23', '2019-03-18 05:48:23'),
(361, 9, 57, 1, 'file--Syntax Analysis.pptx', NULL, '2019-03-18 05:48:39', '2019-03-18 05:48:39'),
(362, 9, 53, 1, 'file--Solution of Accounting Principle 9th Edition chap_1.pdf', NULL, '2019-03-18 06:13:51', '2019-03-18 06:13:51'),
(363, 9, 53, 1, 'file--Solution of Accounting Principle 9th Edition chap_2.pdf', NULL, '2019-03-18 06:14:03', '2019-03-18 06:14:03'),
(364, 9, 53, 1, 'file--Solution of Accounting Principle 9th Edition chap_3.pdf', NULL, '2019-03-18 06:14:19', '2019-03-18 06:14:19'),
(365, 9, 55, 1, 'file--Business Process Modeling.pptx', NULL, '2019-03-18 06:21:34', '2019-03-18 06:21:34'),
(366, 9, 55, 1, 'file--Class & Object Diagrams.pdf', NULL, '2019-03-18 06:21:48', '2019-03-18 06:21:48'),
(367, 9, 55, 1, 'file--ClassDiagram (1).ppt', NULL, '2019-03-18 06:22:04', '2019-03-18 06:22:04'),
(368, 9, 55, 1, 'file--CSE-333 SWE Lec 01.pptx', NULL, '2019-03-18 06:22:19', '2019-03-18 06:22:19'),
(369, 9, 55, 1, 'file--CSE-333 SWE Lec 02.pptx', NULL, '2019-03-18 06:22:34', '2019-03-18 06:22:34'),
(370, 9, 55, 1, 'file--CSE-333 SWE Lec 04.pptx', NULL, '2019-03-18 06:22:50', '2019-03-18 06:22:50'),
(371, 9, 55, 1, 'file--CSE-333 SWE Lec 05.pptx', NULL, '2019-03-18 06:23:05', '2019-03-18 06:23:05'),
(372, 9, 55, 1, 'file--CSE-333 SWE Lec 06.pptx', NULL, '2019-03-18 06:23:19', '2019-03-18 06:23:19'),
(373, 9, 55, 1, 'file--CSE-333 SWE Lec 07.pptx', NULL, '2019-03-18 06:23:37', '2019-03-18 06:23:37'),
(374, 9, 55, 1, 'file--CSE-333 SWE Lec-03.pptx', NULL, '2019-03-18 06:23:53', '2019-03-18 06:23:53'),
(375, 9, 55, 1, 'file--Software-Quality-Assurance.pptx', NULL, '2019-03-18 06:24:07', '2019-03-18 06:24:07'),
(376, 1, 75, 1, 'file--Chap 1.1.ppt', NULL, '2019-03-19 07:47:22', '2019-03-19 07:47:22'),
(377, 1, 75, 1, 'file--Chap 1.3.ppt', NULL, '2019-03-19 07:47:38', '2019-03-19 07:47:38'),
(378, 1, 75, 1, 'file--s1.1_propositional_logic.pdf', NULL, '2019-03-19 07:47:54', '2019-03-19 07:47:54'),
(379, 1, 75, 1, 'file--s1.2_propositional_equivalences.pdf', NULL, '2019-03-19 07:48:14', '2019-03-19 07:48:14'),
(380, 1, 75, 1, 'file--s1.3_predicates_quantifiers.pdf', NULL, '2019-03-19 07:48:32', '2019-03-19 07:48:32'),
(381, 1, 75, 1, 'file--s2.1_sets.pdf', NULL, '2019-03-19 07:48:50', '2019-03-19 07:48:50'),
(382, 1, 75, 1, 'file--s2.2_set_operations.pdf', NULL, '2019-03-19 07:49:05', '2019-03-19 07:49:05'),
(383, 1, 75, 1, 'file--s2.3_functions.pdf', NULL, '2019-03-19 07:49:23', '2019-03-19 07:49:23'),
(384, 1, 75, 1, 'file--s4.1_mathematical_induction.pdf', NULL, '2019-03-19 07:49:39', '2019-03-19 07:49:39'),
(385, 1, 75, 1, 'file--s8.6_partial_orderings.pdf', NULL, '2019-03-19 07:50:05', '2019-03-19 07:50:05'),
(386, 1, 75, 1, 'file--s9.1_graphs_and_models.pdf', NULL, '2019-03-19 07:50:25', '2019-03-19 07:50:25'),
(387, 1, 75, 1, 'file--s9.6_shortest_path_problems Dis.Ma.pdf', NULL, '2019-03-19 07:50:41', '2019-03-19 07:50:41'),
(388, 1, 75, 1, 'file--s10.3_tree_traversal.pdf', NULL, '2019-03-19 07:50:59', '2019-03-19 07:50:59'),
(389, 1, 75, 1, 'file--s10.5_minimum_spanning_trees Dis.Ma.pdf', NULL, '2019-03-19 07:51:18', '2019-03-19 07:51:18'),
(390, 2, 79, 1, 'file--1_bfs.ppt', NULL, '2019-03-19 07:54:30', '2019-03-19 07:54:30'),
(391, 12, 70, 1, 'file--AArithmeticOperations.pdf', NULL, '2019-03-19 08:52:47', '2019-03-19 08:52:47'),
(392, 12, 70, 1, 'file--colorModels.pdf', NULL, '2019-03-19 08:53:01', '2019-03-19 08:53:01'),
(393, 12, 70, 1, 'file--ColorModels2.pdf', NULL, '2019-03-19 08:53:19', '2019-03-19 08:53:19'),
(394, 12, 70, 1, 'file--face_detection.ppt', NULL, '2019-03-19 08:53:34', '2019-03-19 08:53:34'),
(395, 12, 70, 1, 'file--Ip_Lect_2.ppt', NULL, '2019-03-19 08:53:49', '2019-03-19 08:53:49'),
(396, 12, 70, 1, 'file--MorphologicalTransformations.pdf', NULL, '2019-03-19 08:54:07', '2019-03-19 08:54:07'),
(397, 12, 71, 1, 'file--01_benefits.pdf', NULL, '2019-03-19 08:54:21', '2019-03-19 08:54:21'),
(398, 12, 71, 1, 'file--05_crime.pdf', NULL, '2019-03-19 08:54:36', '2019-03-19 08:54:36'),
(399, 12, 71, 1, 'file--Privacy - Copy.ppt', NULL, '2019-03-19 08:55:07', '2019-03-19 08:55:07'),
(400, 2, 16, 2, NULL, 'Questine-1553008154-.PNG', '2019-03-19 09:09:14', '2019-03-19 09:09:14'),
(401, 2, 16, 2, NULL, 'Questine-1553008192-.PNG', '2019-03-19 09:09:52', '2019-03-19 09:09:52'),
(403, 2, 14, 2, NULL, 'Questine-1553008237-.PNG', '2019-03-19 09:10:37', '2019-03-19 09:10:37'),
(404, 2, 17, 2, NULL, 'Questine-1553008261-.PNG', '2019-03-19 09:11:01', '2019-03-19 09:11:01'),
(405, 2, 17, 2, NULL, 'Questine-1553008292-.PNG', '2019-03-19 09:11:32', '2019-03-19 09:11:32'),
(406, 2, 17, 2, NULL, 'Questine-1553008326-.PNG', '2019-03-19 09:12:06', '2019-03-19 09:12:06'),
(407, 2, 17, 2, NULL, 'Questine-1553008342-.PNG', '2019-03-19 09:12:22', '2019-03-19 09:12:22'),
(408, 2, 19, 2, NULL, 'Questine-1553008366-.PNG', '2019-03-19 09:12:46', '2019-03-19 09:12:46'),
(409, 2, 19, 2, NULL, 'Questine-1553008389-.PNG', '2019-03-19 09:13:09', '2019-03-19 09:13:09'),
(410, 2, 14, 2, NULL, 'Questine-1553008522-.PNG', '2019-03-19 09:15:22', '2019-03-19 09:15:22'),
(411, 2, 14, 2, NULL, 'Questine-1553008541-.PNG', '2019-03-19 09:15:41', '2019-03-19 09:15:41'),
(412, 1, 76, 2, NULL, 'Questine-1553008661-.PNG', '2019-03-19 09:17:41', '2019-03-19 09:17:41'),
(413, 1, 13, 1, 'file--(Optics_Interference).pdf', NULL, '2019-03-20 07:45:55', '2019-03-20 07:45:55'),
(414, 1, 13, 1, 'file--1st Lecture on heat & thermodynamics.pdf', NULL, '2019-03-20 07:46:11', '2019-03-20 07:46:11'),
(415, 1, 13, 1, 'file--Chapter-4 (Optics_Interference).pdf', NULL, '2019-03-20 07:46:24', '2019-03-20 07:46:24'),
(416, 1, 13, 1, 'file--Damped harmonic motion.pdf', NULL, '2019-03-20 07:46:39', '2019-03-20 07:46:39'),
(417, 1, 13, 1, 'file--Lec 1.pdf', NULL, '2019-03-20 07:46:54', '2019-03-20 07:46:54'),
(418, 1, 13, 1, 'file--Lecture 2 Physics I (PHY 113) CSE.pdf', NULL, '2019-03-20 07:47:07', '2019-03-20 07:47:07'),
(419, 1, 13, 1, 'file--Lecture 2 Physics I (PHY 113) CSE.pdf', NULL, '2019-03-20 07:47:21', '2019-03-20 07:47:21'),
(420, 1, 13, 1, 'file--Lecture 3 Physics I (PHY 113) CSE .pdf', NULL, '2019-03-20 07:47:33', '2019-03-20 07:47:33'),
(421, 1, 13, 1, 'file--Lecture on friction, angular momentum, work-energy theorem, conservation of energy.pdf', NULL, '2019-03-20 07:47:50', '2019-03-20 07:47:50'),
(422, 1, 13, 1, 'file--Lecture-1 & 2(Ch-2).pdf', NULL, '2019-03-20 07:48:08', '2019-03-20 07:48:08'),
(423, 1, 13, 1, 'file--Lecture-1 on waves and oscillation.pdf', NULL, '2019-03-20 07:48:23', '2019-03-20 07:48:23'),
(424, 1, 13, 1, 'file--Lecture-3 (Ch-2).pdf', NULL, '2019-03-20 07:48:38', '2019-03-20 07:48:38'),
(425, 1, 13, 1, 'file--Math for final.pdf', NULL, '2019-03-20 07:48:53', '2019-03-20 07:48:53'),
(426, 1, 13, 1, 'file--question list for final.pdf', NULL, '2019-03-20 07:49:13', '2019-03-20 07:49:13'),
(427, 1, 13, 1, 'file--Questions on lecture review (midterm).pdf', NULL, '2019-03-20 07:49:31', '2019-03-20 07:49:31'),
(428, 1, 13, 1, 'file--Solved math.pdf', NULL, '2019-03-20 07:49:46', '2019-03-20 07:49:46'),
(429, 2, 17, 1, 'file--bar chart.pptx', NULL, '2019-03-20 07:50:27', '2019-03-20 07:50:27'),
(430, 2, 17, 1, 'file--cover letter.docx', NULL, '2019-03-20 07:50:40', '2019-03-20 07:50:40'),
(431, 2, 17, 1, 'file--Curriculum vita1.docx', NULL, '2019-03-20 07:51:08', '2019-03-20 07:51:08'),
(432, 2, 14, 2, NULL, 'Questine-1553090164-.PNG', '2019-03-20 07:56:04', '2019-03-20 07:56:04'),
(436, 1, 10, 1, NULL, 'Question-1553447585-.PNG', '2019-03-24 11:13:05', '2019-03-24 11:13:05'),
(437, 1, 10, 2, NULL, NULL, '2019-03-24 11:14:37', '2019-03-24 11:14:37'),
(438, 1, 10, 2, NULL, 'Question-1553447866-.PNG', '2019-03-24 11:17:46', '2019-03-24 11:17:46'),
(439, 1, 10, 2, NULL, 'Question-1553448200-.jpg', '2019-03-24 11:23:20', '2019-03-24 11:23:20'),
(440, 1, 10, 1, NULL, 'Question-1553448304-.jpg', '2019-03-24 11:25:04', '2019-03-24 11:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_02_27_164014_create_semisters_table', 2),
(5, '2019_02_27_170340_create_usrer_types_table', 3),
(6, '2019_02_27_170413_create_student_types_table', 3),
(7, '2019_02_28_024458_create_subjects_table', 4),
(8, '2019_03_08_134744_create_videos_table', 5),
(9, '2019_03_08_134752_create_files_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semisters`
--

CREATE TABLE `semisters` (
  `id` int(10) UNSIGNED NOT NULL,
  `semister_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semisters`
--

INSERT INTO `semisters` (`id`, `semister_name`, `created_at`, `updated_at`) VALUES
(1, '1st_semester', NULL, NULL),
(2, '2nd_semester', NULL, NULL),
(3, '3rd_semester', NULL, NULL),
(4, '4th_semester', NULL, NULL),
(5, '5th_semester', NULL, NULL),
(6, '6th_semester', NULL, NULL),
(7, '7th_semester', NULL, NULL),
(8, '8th_semester', NULL, NULL),
(9, '9th_semester', NULL, NULL),
(10, '10th_semester', NULL, NULL),
(11, '11th_semester', NULL, NULL),
(12, '12th_semester', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_types`
--

CREATE TABLE `student_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_cat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_types`
--

INSERT INTO `student_types` (`id`, `name_cat`, `created_at`, `updated_at`) VALUES
(0, 'admin', NULL, NULL),
(1, 'Day', NULL, NULL),
(2, 'Evening', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `semister_id` int(11) NOT NULL,
  `sub_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `st_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `semister_id`, `sub_name`, `credit`, `st_type`, `created_at`, `updated_at`) VALUES
(10, 1, 'MAT111:Mathematics I: Differential and Integral Calculus', 3, 1, '2019-03-16 08:40:11', '2019-03-16 08:40:11'),
(11, 1, 'CSE112:Computer Fundamentals', 3, 1, '2019-03-16 08:40:55', '2019-03-16 08:40:55'),
(12, 1, 'ENG113:Basic Functional English and English Spoken', 3, 1, '2019-03-16 08:41:23', '2019-03-16 08:41:23'),
(13, 1, 'PHY113:Physics I: Mechanics, Heat and Thermodynamics, Waves and Oscillations and Optics', 3, 1, '2019-03-16 08:42:04', '2019-03-16 08:42:04'),
(14, 2, 'PHY123:Physics II: Electricity, Magnetism and Modern Physics', 3, 1, '2019-03-16 08:43:59', '2019-03-16 08:43:59'),
(15, 2, 'CSE123:Problem Solving Lab', 1, 1, '2019-03-16 08:44:33', '2019-03-16 08:44:33'),
(17, 2, 'ENG123:Writing and Comprehension', 3, 1, '2019-03-16 08:45:53', '2019-03-16 08:45:53'),
(18, 2, 'PHY124:Physics-II Lab', 1, 1, '2019-03-16 08:46:38', '2019-03-16 08:46:38'),
(19, 2, 'MAT121:Mathematics - II: Linear Algebra and Coordinate Geometry', 3, 1, '2019-03-16 08:47:11', '2019-03-16 08:47:11'),
(20, 3, 'CSE132:Electrical Circuits', 3, 1, '2019-03-16 08:48:09', '2019-03-16 08:48:09'),
(21, 3, 'CSE131:Discrete Mathematics', 3, 1, '2019-03-16 08:49:02', '2019-03-16 08:49:02'),
(22, 3, 'MAT131:Ordinary and Partial Differential Equations', 3, 1, '2019-03-16 09:24:31', '2019-03-16 09:24:31'),
(23, 3, 'CSE135:Data Structure Lab', 1, 1, '2019-03-16 09:25:00', '2019-03-16 09:25:00'),
(24, 3, 'CSE134:Data Structure', 3, 1, '2019-03-16 09:25:38', '2019-03-16 09:25:38'),
(25, 3, 'CSE133:Electrical Circuits Lab', 1, 1, '2019-03-16 09:26:01', '2019-03-16 09:26:01'),
(26, 4, 'CSE212:Digital Electronics', 3, 1, '2019-03-16 09:26:54', '2019-03-16 09:26:54'),
(27, 4, 'MAT211:Engineering Mathematics', 3, 1, '2019-03-16 09:27:17', '2019-03-16 09:27:17'),
(29, 4, 'CSE215:Object Oriented Programming Lab', 1, 1, '2019-03-16 09:28:49', '2019-03-16 09:28:49'),
(30, 4, 'CSE214:Object Oriented Programming', 3, 1, '2019-03-16 09:29:17', '2019-03-16 09:29:17'),
(31, 4, 'CSE213:Digital Electronics Lab', 1, 1, '2019-03-16 09:29:40', '2019-03-16 09:29:40'),
(32, 4, 'GED201:Bangladesh Studies', 3, 1, '2019-03-16 09:30:07', '2019-03-16 09:30:07'),
(33, 5, 'CSE225:Electronics Devices and Circuits Lab', 1, 1, '2019-03-16 09:30:48', '2019-03-16 09:30:48'),
(34, 5, 'CSE222:Algorithms Lab', 1, 1, '2019-03-16 09:31:18', '2019-03-16 09:31:18'),
(35, 5, 'CSE221:Algorithms', 3, 1, '2019-03-16 09:31:50', '2019-03-16 09:31:50'),
(36, 5, 'STA133:Statistics and Probability', 3, 1, '2019-03-16 09:32:13', '2019-03-16 09:32:13'),
(37, 5, 'CSE224:Electronics Devices and Circuits', 3, 1, '2019-03-16 09:32:34', '2019-03-16 09:32:34'),
(38, 6, 'CSE235:Introduction to Bio- Informatics', 3, 1, '2019-03-16 09:33:03', '2019-03-16 09:33:03'),
(39, 6, 'CSE234:Numerical Methods', 3, 1, '2019-03-16 09:33:29', '2019-03-16 09:33:29'),
(40, 6, 'CSE232:Microprocessor and Assembly Language Lab', 1, 1, '2019-03-16 09:34:01', '2019-03-16 09:34:01'),
(41, 6, 'CSE233:Data Communication', 3, 1, '2019-03-16 09:34:22', '2019-03-16 09:34:22'),
(42, 6, 'CSE231:Microprocessor and Assembly Language', 3, 1, '2019-03-16 09:34:48', '2019-03-16 09:34:48'),
(43, 7, 'GED321:Art of Living', 3, 1, '2019-03-16 09:35:50', '2019-03-16 09:35:50'),
(44, 7, 'CSE312:Database Management System Lab', 1, 1, '2019-03-16 09:36:12', '2019-03-16 09:36:12'),
(45, 7, 'CSE314:Computer Networks Lab', 1, 1, '2019-03-16 09:36:45', '2019-03-16 09:36:45'),
(46, 7, 'CSE311:Database Management System', 3, 1, '2019-03-16 09:37:08', '2019-03-16 09:37:08'),
(47, 7, 'CSE313:Computer Networks', 3, 1, '2019-03-16 09:37:29', '2019-03-16 09:37:29'),
(48, 8, 'CSE324:Operating Systems Lab', 1, 1, '2019-03-16 09:40:11', '2019-03-16 09:40:11'),
(49, 8, 'CSE322:Computer Architecture and Organization', 3, 1, '2019-03-16 09:40:38', '2019-03-16 09:40:38'),
(50, 8, 'ECO314:Economics', 3, 1, '2019-03-16 09:41:03', '2019-03-16 09:41:03'),
(51, 8, 'CSE321:System Analysis & Design', 3, 1, '2019-03-16 09:41:23', '2019-03-16 09:41:23'),
(52, 8, 'CSE323:Operating Systems', 3, 1, '2019-03-16 09:41:44', '2019-03-16 09:41:44'),
(53, 9, 'ACT301:Financial and Managerial Accounting', 2, 1, '2019-03-16 09:42:12', '2019-03-16 09:42:12'),
(54, 9, 'CSE334:Wireless Programming', 3, 1, '2019-03-16 09:43:22', '2019-03-16 09:43:22'),
(55, 9, 'CSE333:Software Engineering', 3, 1, '2019-03-16 09:43:43', '2019-03-16 09:43:43'),
(56, 9, 'CSE332:Compiler Design Lab', 1, 1, '2019-03-16 09:44:03', '2019-03-16 09:44:03'),
(57, 9, 'CSE331:Compiler Design', 3, 1, '2019-03-16 09:44:23', '2019-03-16 09:44:23'),
(58, 10, 'CSE418:Web Engineering Lab', 1, 1, '2019-03-16 09:44:48', '2019-03-16 09:44:48'),
(59, 10, 'CSE417:Web Engineering', 3, 1, '2019-03-16 09:45:21', '2019-03-16 09:45:21'),
(60, 10, 'CSE414:Simulation and Modeling', 3, 1, '2019-03-16 09:45:44', '2019-03-16 09:45:44'),
(61, 10, 'CSE413:Artificial Intelligence Lab', 1, 1, '2019-03-16 09:46:04', '2019-03-16 09:46:04'),
(62, 10, 'CSE412:Artificial Intelligence', 3, 1, '2019-03-16 09:46:33', '2019-03-16 09:46:33'),
(63, 10, 'CSE415:Simulation and Modeling Lab', 1, 1, '2019-03-16 09:47:00', '2019-03-16 09:47:00'),
(64, 11, 'CSE450:Data Mining', 3, 1, '2019-03-16 09:47:57', '2019-03-16 09:47:57'),
(65, 11, 'CSE423:Embedded Systems', 3, 1, '2019-03-16 09:48:22', '2019-03-16 09:48:22'),
(66, 11, 'CSE422:Computer Graphics Lab', 1, 1, '2019-03-16 09:48:47', '2019-03-16 09:48:47'),
(67, 11, 'CSE499:Project / Internship (Phase I)', 3, 1, '2019-03-16 09:49:14', '2019-03-16 09:49:14'),
(68, 11, 'CSE421:Computer Graphics', 3, 1, '2019-03-16 09:49:32', '2019-03-16 09:49:32'),
(69, 12, 'CSE499:Project / Internship (Phase II)', 3, 1, '2019-03-16 09:49:57', '2019-03-16 09:49:57'),
(70, 12, 'CSE433:Digital Image Processing', 3, 1, '2019-03-16 09:50:35', '2019-03-16 09:50:35'),
(71, 12, 'CSE498:Social and Professional Issues in Computing', 3, 1, '2019-03-16 09:50:55', '2019-03-16 09:50:55'),
(74, 1, 'MAT 121:Mathematics II: Linear algebraand Coordinate Geometry', 3, 2, '2019-03-17 13:55:31', '2019-03-17 13:55:31'),
(75, 1, 'CSE 131:Discrete Mathematics', 3, 2, '2019-03-17 13:55:53', '2019-03-17 13:55:53'),
(76, 1, 'ENG 113:English Language-I', 3, 2, '2019-03-17 13:56:15', '2019-03-17 13:56:15'),
(77, 1, 'PHY 123: Physics- II: Electricity, Magnetism and Modern Physics', 3, 2, '2019-03-17 13:56:41', '2019-03-17 13:56:41'),
(78, 1, 'PHY 123L:Physics-II Lab', 1, 2, '2019-03-17 13:57:14', '2019-03-17 13:57:14'),
(79, 2, 'CSE213:Algorithms', 3, 2, '2019-03-17 13:57:39', '2019-03-17 13:57:39'),
(80, 2, 'CSE213L:Algorithm Lab', 1, 2, '2019-03-17 13:58:12', '2019-03-17 13:58:12'),
(81, 2, 'ACC214:Accounting', 3, 2, '2019-03-17 13:58:46', '2019-03-17 13:58:46'),
(82, 2, 'ECO314:Economics', 3, 2, '2019-03-17 13:59:10', '2019-03-17 13:59:10'),
(83, 2, 'MAT134:Mathematics III : Ordinary and PartialDifferential Equations', 3, 2, '2019-03-17 13:59:39', '2019-03-17 13:59:39'),
(84, 3, 'CSE221:Theory of Computing', 3, 2, '2019-03-17 14:03:45', '2019-03-17 14:03:45'),
(85, 3, 'CSE222:Object Oriented Programming', 3, 2, '2019-03-17 14:04:13', '2019-03-17 14:04:13'),
(86, 3, 'CSE222L:Object Oriented Programming Lab', 1, 2, '2019-03-17 14:04:45', '2019-03-17 14:04:45'),
(87, 3, 'MAT211:Mathematics-IV : Engineering Mathematics', 3, 2, '2019-03-17 14:05:26', '2019-03-17 14:05:26'),
(88, 3, 'STA223: Statistics', 3, 2, '2019-03-17 14:05:59', '2019-03-17 14:05:59'),
(89, 4, 'CSE231: Microprocessor and Assembly Language', 3, 2, '2019-03-17 14:07:16', '2019-03-17 14:07:16'),
(90, 4, 'CSE231L: Microprocessor and assembly Language Lab', 1, 2, '2019-03-17 14:07:43', '2019-03-17 14:07:43'),
(91, 4, 'CSE224: Electronic Devices and Circuits', 3, 2, '2019-03-17 14:08:10', '2019-03-17 14:08:10'),
(92, 4, 'CSE224L: Electronic Devices and Circuits Lab', 1, 2, '2019-03-17 14:09:39', '2019-03-17 14:09:39'),
(93, 4, 'CSE232: Instrumentation and Control', 3, 2, '2019-03-17 14:10:24', '2019-03-17 14:10:24'),
(94, 4, 'CSE233: Data Communication', 3, 2, '2019-03-17 14:10:51', '2019-03-17 14:10:51'),
(95, 5, 'CSE322: Computer Architecture and Organization', 3, 2, '2019-03-17 14:11:21', '2019-03-17 14:11:21'),
(96, 5, 'CSE313: Computer Networks', 3, 2, '2019-03-17 14:11:52', '2019-03-17 14:11:52'),
(97, 5, 'CSE313L: Computer Networks Lab', 1, 2, '2019-03-17 14:12:24', '2019-03-17 14:12:24'),
(98, 5, 'CSE311: Database Management System', 3, 2, '2019-03-17 14:12:58', '2019-03-17 14:12:58'),
(99, 5, 'CSE311L: Database Management System Lab', 1, 2, '2019-03-17 14:13:37', '2019-03-17 14:13:37'),
(100, 5, 'CSE312: Numerical Methods', 3, 2, '2019-03-17 14:14:11', '2019-03-17 14:14:11'),
(101, 6, 'CSE331: Compiler Design', 3, 2, '2019-03-17 14:15:24', '2019-03-17 14:15:24'),
(102, 6, 'CSE331L: Compiler Design Lab', 1, 2, '2019-03-17 14:16:02', '2019-03-17 14:16:02'),
(103, 6, 'CSE413: Simulation and Modeling', 3, 2, '2019-03-17 14:16:30', '2019-03-17 14:16:30'),
(104, 6, 'CSE413L: Simulation and Modeling Lab', 1, 2, '2019-03-17 14:17:25', '2019-03-17 14:17:25'),
(105, 6, 'CSE323: Operating System', 3, 2, '2019-03-17 14:17:50', '2019-03-17 14:17:50'),
(106, 6, 'CSE323L: Operating System Lab', 1, 2, '2019-03-17 14:18:17', '2019-03-17 14:18:17'),
(107, 7, 'CSE321: System Analysis and Design', 3, 2, '2019-03-17 14:18:51', '2019-03-17 14:18:51'),
(108, 7, 'CSE321L: System Analysis and Design Lab', 1, 2, '2019-03-17 14:19:18', '2019-03-17 14:19:18'),
(109, 7, 'CSE421: Computer Graphics', 3, 2, '2019-03-17 14:19:48', '2019-03-17 14:19:48'),
(110, 7, 'CSE421L: Computer Graphics Lab', 1, 2, '2019-03-17 14:20:20', '2019-03-17 14:20:20'),
(111, 7, 'CSE431: E-Commerce & Web Application', 3, 2, '2019-03-17 14:20:52', '2019-03-17 14:20:52'),
(112, 7, 'MGT414: Industrial Management', 3, 2, '2019-03-17 14:21:18', '2019-03-17 14:21:18'),
(113, 8, 'CSE412: Artificial Intelligence', 3, 2, '2019-03-17 14:21:45', '2019-03-17 14:21:45'),
(114, 8, 'CSE412L: Artificial Intelligence Lab', 1, 2, '2019-03-17 14:22:17', '2019-03-17 14:22:17'),
(115, 8, 'CSE411: Communication Engineering', 3, 2, '2019-03-17 14:22:40', '2019-03-17 14:22:40'),
(116, 8, 'CSE332: Software Engineering', 3, 2, '2019-03-17 14:23:02', '2019-03-17 14:23:02'),
(117, 8, 'CSE499: Project Phase I', 3, 2, '2019-03-17 14:23:27', '2019-03-17 14:23:27'),
(118, 9, 'CSE333: Peripherals & Interfacing', 3, 2, '2019-03-17 14:23:55', '2019-03-17 14:23:55'),
(119, 9, 'CSE432: Computer and Network Security', 3, 2, '2019-03-17 14:24:23', '2019-03-17 14:24:23'),
(120, 9, 'CSE499: Project/Internship (Phase II)', 3, 2, '2019-03-17 14:24:49', '2019-03-17 14:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int(10) UNSIGNED NOT NULL,
  `st_type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `category`, `st_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(8, 'karim15-6038@diu.edu.bd', '2019-03-04 11:50:00', '$2y$10$2JkhddE.iCkCSS7hwgbPT.j0b9OwZFPh5LX64iUNJnNTzOlDg5XBi', 2, 0, 'yTpAFnN0oO4sVkqHDNFiCBu3rA5mwjbngez5BirJuOE8iocUayzSXLhHIDkj', '2019-03-04 11:47:44', '2019-03-04 11:50:00'),
(10, 'mahfuzur33-4783@diu.edu.bd', '2019-03-04 11:50:00', '$2y$10$2JkhddE.iCkCSS7hwgbPT.j0b9OwZFPh5LX64iUNJnNTzOlDg5XBi', 3, 1, 'em0Ym8eTXiTgudFfEFXCabwgVckmsRzQ9tiHYPBN8elXu1k4Z7rTfLcw5zMk', '2019-03-04 11:47:44', '2019-03-21 03:26:02'),
(13, 'fahamidur-5122@diu.edu.bd', '2019-03-16 07:56:21', '$2y$10$2JkhddE.iCkCSS7hwgbPT.j0b9OwZFPh5LX64iUNJnNTzOlDg5XBi', 3, 2, 'vebrC5Fl0GbKBbI55TbTxyGobJcAvYjd5VQtzb8Nr4TWPx1JYjdbBzdepma3', '2019-03-16 07:54:55', '2019-03-16 07:56:21'),
(15, 'fahamidur15-5122@diu.edu.bd', '2019-03-20 10:57:29', '$2y$10$2JkhddE.iCkCSS7hwgbPT.j0b9OwZFPh5LX64iUNJnNTzOlDg5XBi', 1, 0, 'bIN4sBYZIa4J8eYLe0cHLoznrDa5gTV4PG0FGUNr7hBKTCBtg5zSRTxJDnjP', '2019-03-20 10:56:57', '2019-03-20 11:01:49'),
(16, 'tanvir.cse@diu.edu.bd', NULL, '$2y$10$QT/M69Trr5Fei1fZxdb9OuXmf5ZXN9TMrvq1pv.lb1XOPETaM5NK6', 2, 0, 'MrOUTaaDLKEJFPZlHuYv44KU9DVKrLTIaitMhcWr73Gj6aQHNvjqttePEyfN', '2019-03-21 03:20:55', '2019-03-21 03:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `usrer_types`
--

CREATE TABLE `usrer_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usrer_types`
--

INSERT INTO `usrer_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Teacher', NULL, NULL),
(3, 'Student', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `semister` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `st_type` int(11) NOT NULL,
  `video_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `semister`, `subject`, `st_type`, `video_title`, `video`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, NULL, 'https://www.youtube.com/embed/G70V9f7HgxE', '2019-03-08 08:51:40', '2019-03-08 08:51:40'),
(2, 3, 1, 2, NULL, 'https://www.youtube.com/embed/5X7WWVTrBvM', '2019-03-08 08:52:31', '2019-03-08 08:52:31'),
(3, 4, 8, 2, 'Topu', 'https://www.youtube.com/embed/_cPHiwPqbqo', '2019-03-12 10:48:32', '2019-03-12 10:48:32'),
(6, 8, 8, 2, 'topu', 'https://www.youtube.com/embed/PTJZqNho5PE', '2019-03-16 08:08:26', '2019-03-16 08:08:26'),
(9, 3, 21, 1, 'Discrete Mathematics - More Logical Operators', 'https://www.youtube.com/embed/a3qDoz1FMMg', '2019-03-16 11:09:57', '2019-03-16 11:09:57'),
(11, 3, 21, 1, 'Discrete Mathematics - Propositional Function and Quantifier', 'https://www.youtube.com/embed/1iwZ_JjEXPM', '2019-03-16 11:11:05', '2019-03-16 11:11:05'),
(12, 3, 21, 1, 'Discrete Mathematics - Negation of a Quantifier', 'https://www.youtube.com/embed/7dXVRvK8K7g', '2019-03-16 11:11:36', '2019-03-16 11:11:36'),
(13, 3, 21, 1, 'Discrete Mathematics - Multi Variable Propositional Function', 'https://www.youtube.com/embed/IDx9Ra-3Po4', '2019-03-16 11:12:12', '2019-03-16 11:12:12'),
(14, 3, 21, 1, 'Discrete Mathematics - Negation of Multi Variable Quantifier', 'https://www.youtube.com/embed/OMghdxVRc94', '2019-03-16 11:12:45', '2019-03-16 11:12:45'),
(15, 3, 21, 1, 'Discrete Mathematics - Rules of Inference', 'https://www.youtube.com/embed/ev5HwLjZ6FU', '2019-03-16 11:13:14', '2019-03-16 11:13:14'),
(16, 3, 21, 1, 'Discrete Mathematics - Proof Technique', 'https://www.youtube.com/embed/zqZ3eX0MOqs', '2019-03-16 11:13:42', '2019-03-16 11:13:42'),
(17, 3, 21, 1, 'Discrete Mathematics - Set Theory', 'https://www.youtube.com/embed/loYMGfhWIC4', '2019-03-16 11:14:08', '2019-03-16 11:14:08'),
(18, 3, 21, 1, 'Discrete Mathematics - Power Set', 'https://www.youtube.com/embed/83tW9Dgjtzg', '2019-03-16 11:14:49', '2019-03-16 11:14:49'),
(19, 3, 21, 1, 'Discrete Mathematics - Basic Set Operation', 'https://www.youtube.com/embed/kyhD2B3jGxM', '2019-03-16 11:15:20', '2019-03-16 11:15:20'),
(20, 3, 21, 1, 'Discrete Mathematics - Function', 'https://www.youtube.com/embed/CfoEwNS1eaI', '2019-03-16 11:15:42', '2019-03-16 11:15:42'),
(21, 3, 21, 1, 'Discrete Mathematics - One To One Function', 'https://www.youtube.com/embed/L92nIficosU', '2019-03-16 11:16:18', '2019-03-16 11:16:18'),
(22, 3, 21, 1, 'Discrete Mathematics - On To Function', 'https://www.youtube.com/embed/cmBJ8A-mUsg', '2019-03-16 11:16:49', '2019-03-16 11:16:49'),
(23, 3, 21, 1, 'Discrete Mathematics - Sequence / Series', 'https://www.youtube.com/embed/eK8h9Yg1qV4', '2019-03-16 11:17:51', '2019-03-16 11:17:51'),
(24, 3, 21, 1, 'Discrete Mathematics - Summation of a Sequence', 'https://www.youtube.com/embed/jnU4ra-6y7c', '2019-03-16 11:18:19', '2019-03-16 11:18:19'),
(25, 3, 21, 1, 'Discrete Mathematics - Problem Solving', 'https://www.youtube.com/embed/eBpqIyxsrF4', '2019-03-16 11:18:58', '2019-03-16 11:18:58'),
(26, 3, 21, 1, 'Discrete Mathematics - Linear Search & Binary Search', 'https://www.youtube.com/embed/7ALXmy9rlLQ', '2019-03-16 11:19:23', '2019-03-16 11:19:23'),
(27, 3, 21, 1, 'Discrete Mathematics - Time Complexity of Binary Search', 'https://www.youtube.com/embed/YXcFXIZLaCI', '2019-03-16 11:19:49', '2019-03-16 11:19:49'),
(28, 3, 21, 1, 'Discrete Mathematics - Quadratic Time Complexity', 'https://www.youtube.com/embed/dnhvDQgy9rM', '2019-03-16 11:20:14', '2019-03-16 11:20:14'),
(29, 3, 21, 1, 'Discrete Mathematics - Big O Notation', 'https://www.youtube.com/embed/2hq8390qzHg', '2019-03-16 11:20:43', '2019-03-16 11:20:43'),
(30, 3, 21, 1, 'Discrete Mathematics - Big Omega (O) Notation', 'https://www.youtube.com/embed/RgJESfBfdGs', '2019-03-16 11:21:07', '2019-03-16 11:21:07'),
(31, 3, 21, 1, 'Discrete Mathematics - Mathematical Induction', 'https://www.youtube.com/embed/I21ADfBTuf0', '2019-03-16 11:21:31', '2019-03-16 11:21:31'),
(32, 3, 21, 1, 'Discrete Mathematics - Mathematical Induction Example', 'https://www.youtube.com/embed/A65qRGpgK9s', '2019-03-16 11:22:27', '2019-03-16 11:22:27'),
(33, 3, 21, 1, 'Discrete Mathematics - Strong Induction', 'https://www.youtube.com/embed/2zrj84G7ZeA', '2019-03-16 11:22:56', '2019-03-16 11:22:56'),
(34, 3, 21, 1, 'Discrete Mathematics - Recurrence Relation', 'https://www.youtube.com/embed/A2T4x7E3Dpw', '2019-03-16 11:23:32', '2019-03-16 11:23:32'),
(35, 3, 21, 1, 'Discrete Mathematics - Product Rule', 'https://www.youtube.com/embed/V4e7swpzsnM', '2019-03-16 11:24:00', '2019-03-16 11:24:00'),
(36, 3, 21, 1, 'Discrete Mathematics - Sum Rule', 'https://www.youtube.com/embed/06FoRQDUQFA', '2019-03-16 11:24:24', '2019-03-16 11:24:24'),
(37, 3, 21, 1, 'Discrete Mathematics - Counting Example 01', 'https://www.youtube.com/embed/0pzlQZS4tKw', '2019-03-16 11:24:54', '2019-03-16 11:24:54'),
(38, 3, 21, 1, 'Discrete Mathematics - Counting Example 02', 'https://www.youtube.com/embed/iXS4SEq6gtw', '2019-03-16 11:25:19', '2019-03-16 11:25:19'),
(39, 3, 21, 1, 'Discrete Mathematics - Pigeon Hole Principle', 'https://www.youtube.com/embed/AdVjyJWIWwg', '2019-03-16 11:25:46', '2019-03-16 11:25:46'),
(40, 3, 21, 1, 'Discrete Mathematics - Permutation', 'https://www.youtube.com/embed/wm_v4tQcEgA', '2019-03-16 11:26:11', '2019-03-16 11:26:11'),
(41, 3, 21, 1, 'Discrete Mathematics - Combination', 'https://www.youtube.com/embed/-mMSyDAf9dg', '2019-03-16 11:26:36', '2019-03-16 11:26:36'),
(42, 3, 21, 1, 'Discrete Mathematics - Probability Theory', 'https://www.youtube.com/embed/pF-awPzPgdg', '2019-03-16 11:27:05', '2019-03-16 11:27:05'),
(43, 3, 21, 1, 'Discrete Mathematics - Compliment', 'https://www.youtube.com/embed/h6M2BUX7DZk', '2019-03-16 11:27:41', '2019-03-16 11:27:41'),
(44, 3, 21, 1, 'Discrete Mathematics - Probability of multiple events', 'https://www.youtube.com/embed/7MBG47DUim0', '2019-03-16 11:28:05', '2019-03-16 11:28:05'),
(45, 3, 21, 1, 'Discrete Mathematics - Conditional Probability', 'https://www.youtube.com/embed/QhtbGxupMIM', '2019-03-16 11:28:30', '2019-03-16 11:28:30'),
(46, 3, 21, 1, 'Discrete Mathematics - Independent Events', 'https://www.youtube.com/embed/3uzuMuM__Vg', '2019-03-16 11:28:55', '2019-03-16 11:28:55'),
(47, 3, 21, 1, 'Discrete Mathematics - Bayes Theorem', 'https://www.youtube.com/embed/pP3VUMC22pc', '2019-03-16 11:29:19', '2019-03-16 11:29:19'),
(48, 3, 21, 1, 'Discrete Mathematics - Graph Theory', 'https://www.youtube.com/embed/WSgCCHOb350', '2019-03-16 11:29:40', '2019-03-16 11:29:40'),
(49, 3, 21, 1, 'Discrete Mathematics - Degree of Vertices', 'https://www.youtube.com/embed/aYJCjfPtIQM', '2019-03-16 11:30:07', '2019-03-16 11:30:07'),
(50, 3, 21, 1, 'Discrete Mathematics - Handshaking Theorem', 'https://www.youtube.com/embed/u0zE2HmZtx4', '2019-03-16 11:30:31', '2019-03-16 11:30:31'),
(51, 3, 21, 1, 'Discrete Mathematics - Connectivity, Path & Cycle', 'https://www.youtube.com/embed/sAVJdilTu8s', '2019-03-16 11:30:57', '2019-03-16 11:30:57'),
(52, 3, 21, 1, 'Discrete Mathematics - Tree & Rooted Tree', 'https://www.youtube.com/embed/un6AHPq5hl4', '2019-03-16 11:31:21', '2019-03-16 11:31:21'),
(53, 3, 21, 1, 'Discrete Mathematics - Binary Tree & Binary Search Tree', 'https://www.youtube.com/embed/Hx-h1kk-vlM', '2019-03-16 11:31:43', '2019-03-16 11:31:43'),
(54, 3, 21, 1, 'Discrete Mathematics - Decision Tree', 'https://www.youtube.com/embed/XlnwAOIt8Yg', '2019-03-16 11:32:07', '2019-03-16 11:32:07'),
(55, 3, 20, 1, 'Thevenin\'s Theorem. Example with solution', 'https://www.youtube.com/embed/8RQjA_dMIfw', '2019-03-16 11:50:00', '2019-03-16 11:50:00'),
(56, 3, 20, 1, 'Thevenin and Norton Equivalent Circuit', 'https://www.youtube.com/embed/4qEaI4FpYpw', '2019-03-16 11:50:20', '2019-03-16 11:50:20'),
(57, 3, 20, 1, 'Superposition Theorem Explained (with Examples)', 'https://www.youtube.com/embed/S0GsrzjVkd4', '2019-03-16 11:50:42', '2019-03-16 11:50:42'),
(58, 3, 20, 1, 'https://www.youtube.com/watch?v=wGlILM2a3CU', 'https://www.youtube.com/embed/wGlILM2a3CU', '2019-03-16 11:51:04', '2019-03-16 11:51:04'),
(59, 3, 20, 1, 'Maximum Power Transfer Theorem for DC Circuits (with Examples)', 'https://www.youtube.com/embed/RbII8o49Hvs', '2019-03-16 11:51:25', '2019-03-16 11:51:25'),
(60, 3, 20, 1, 'KVL KCL Ohm\'s Law Circuit Practice Problem', 'https://www.youtube.com/embed/YIsGDYVM6RA', '2019-03-16 11:51:45', '2019-03-16 11:51:45'),
(61, 3, 20, 1, 'nodal analysis', 'https://www.youtube.com/embed/D2PhEJFoPMM', '2019-03-16 11:52:04', '2019-03-16 11:52:04'),
(62, 3, 20, 1, 'nodal analysis', 'https://www.youtube.com/embed/2lY757QaaKs', '2019-03-16 11:52:22', '2019-03-16 11:52:22'),
(63, 3, 20, 1, 'mesh analysis', 'https://www.youtube.com/embed/DYg8B-ElK0s', '2019-03-16 11:52:48', '2019-03-16 11:52:48'),
(64, 3, 20, 1, 'mesh analysis(mesh current method)', 'https://www.youtube.com/embed/j8LHrm3_brk', '2019-03-16 11:53:11', '2019-03-16 11:53:11'),
(65, 3, 20, 1, 'mesh analysis 2', 'https://www.youtube.com/embed/SkBAJ7TooDk', '2019-03-16 11:53:40', '2019-03-16 11:53:40'),
(66, 3, 20, 1, 'mesh analysis problem solved', 'https://www.youtube.com/embed/t2rsDrOCn4I', '2019-03-16 11:54:01', '2019-03-16 11:54:01'),
(67, 3, 20, 1, 'mesh analysis with current source', 'https://www.youtube.com/embed/s5svOTeKnOE', '2019-03-16 11:54:26', '2019-03-16 11:54:26'),
(68, 3, 24, 1, 'Introduction to Pointers | C Language', 'https://www.youtube.com/embed/sY-s7O0FiYE', '2019-03-16 12:01:16', '2019-03-16 12:01:16'),
(69, 3, 23, 1, 'Pointers and Structs', 'https://www.youtube.com/embed/_1ybxs60-Sc', '2019-03-16 12:02:05', '2019-03-16 12:02:05'),
(70, 3, 23, 1, 'Pointer to Array', 'https://www.youtube.com/embed/868qXWoGS9E', '2019-03-16 12:02:31', '2019-03-16 12:02:31'),
(71, 3, 23, 1, 'Introduction to Recursion (Data Structures & Algorithms', 'https://www.youtube.com/embed/B0NtAFf4bvU', '2019-03-16 12:03:04', '2019-03-16 12:03:04'),
(72, 3, 23, 1, 'Recursion-Basics (part 1', 'https://www.youtube.com/embed/UX-wl949eco', '2019-03-16 12:03:34', '2019-03-16 12:03:34'),
(73, 3, 23, 1, 'recursion part2', 'https://www.youtube.com/embed/PUzKj9Hd-g0', '2019-03-16 12:03:56', '2019-03-16 12:03:56'),
(74, 3, 24, 1, 'Pointers and arrays', 'https://www.youtube.com/embed/ASVB8KAFypk', '2019-03-16 12:05:39', '2019-03-16 12:05:39'),
(75, 3, 23, 1, 'Introduction to pointer', 'https://www.youtube.com/embed/zl9hmnj7BZU', '2019-03-16 12:06:02', '2019-03-16 12:06:02'),
(76, 3, 23, 1, 'Introduction to Linked List in Data Structures', 'https://www.youtube.com/embed/Rs1KPyb9fHY', '2019-03-16 12:06:28', '2019-03-16 12:06:28'),
(77, 3, 23, 1, 'introduction to linked list', 'https://www.youtube.com/embed/NobHlGUjV3g', '2019-03-16 12:06:56', '2019-03-16 12:06:56'),
(78, 3, 23, 1, 'Introduction to stack', 'https://www.youtube.com/embed/F1F2imiOJfk', '2019-03-16 12:07:32', '2019-03-16 12:07:32'),
(79, 3, 24, 1, 'Stack in Data Structure', 'https://www.youtube.com/embed/BrVZZZkkGGI', '2019-03-16 12:07:57', '2019-03-16 12:07:57'),
(80, 3, 23, 1, 'Data structures: Array implementation of stacks', 'https://www.youtube.com/embed/sFVxsglODoo', '2019-03-16 12:08:24', '2019-03-16 12:08:24'),
(81, 3, 24, 1, 'PUSH Operation POP Operation with Example', 'https://www.youtube.com/embed/t35b-8w4Yrg', '2019-03-16 12:08:50', '2019-03-16 12:08:50'),
(82, 3, 24, 1, 'Infix to Postfix Conversion', 'https://www.youtube.com/embed/vXPL6UavUeA', '2019-03-16 12:09:14', '2019-03-16 12:09:14'),
(83, 3, 24, 1, 'infix to postfix conversion using stack', 'https://www.youtube.com/embed/rBEmgYDgVIQ', '2019-03-16 12:09:37', '2019-03-16 12:09:37'),
(84, 3, 23, 1, 'Queue | Data Structures', 'https://www.youtube.com/embed/gnYM_G1ILm0', '2019-03-16 12:10:24', '2019-03-16 12:10:24'),
(85, 3, 23, 1, 'Data structures: Introduction to Queues', 'https://www.youtube.com/embed/XuCbpw6Bj1U', '2019-03-16 12:10:45', '2019-03-16 12:10:45'),
(86, 3, 23, 1, 'Data structures: Array implementation of Queue', 'https://www.youtube.com/embed/okr-XE8yTO8', '2019-03-16 12:11:13', '2019-03-16 12:11:13'),
(87, 3, 24, 1, 'Data structures: Introduction to graphs', 'https://www.youtube.com/embed/gXgEDyodOJU', '2019-03-16 12:11:37', '2019-03-16 12:11:37'),
(88, 3, 24, 1, 'Types of Graph In data Structure', 'https://www.youtube.com/embed/f_pOBzarLSo', '2019-03-16 12:12:00', '2019-03-16 12:12:00'),
(89, 3, 24, 1, 'Weighted Graph and Shortest Path', 'https://www.youtube.com/embed/rvLmBSTMtcY', '2019-03-16 12:12:18', '2019-03-16 12:12:18'),
(90, 3, 24, 1, 'COMPLETE GRAPH', 'https://www.youtube.com/embed/Q6hoL8zSiUE', '2019-03-16 12:12:43', '2019-03-16 12:12:43'),
(91, 3, 24, 1, 'Depth First Search', 'https://www.youtube.com/embed/Lax2okU8yM8', '2019-03-16 12:13:03', '2019-03-16 12:13:03'),
(92, 3, 24, 1, 'Depth First Search Algorithm', 'https://www.youtube.com/embed/iaBEKo5sM7w', '2019-03-16 12:13:26', '2019-03-16 12:13:26'),
(93, 3, 24, 1, 'Breadth First Search | BFS', 'https://www.youtube.com/embed/GVSxGBCtQCE', '2019-03-16 12:13:50', '2019-03-16 12:13:50'),
(94, 3, 24, 1, 'Breadth First Search Algorithm(BFS)', 'https://www.youtube.com/embed/ALt3VXC2gtU', '2019-03-16 12:14:15', '2019-03-16 12:14:15'),
(95, 3, 24, 1, 'Binary tree traversal: Preorder, Inorder, Postorder', 'https://www.youtube.com/embed/gm8DUJJhmY4', '2019-03-16 12:14:39', '2019-03-16 12:14:39'),
(96, 3, 24, 1, 'Binary Tree Traversal', 'https://www.youtube.com/embed/cbaWHXSsSCY', '2019-03-16 12:15:01', '2019-03-16 12:15:01'),
(97, 3, 24, 1, 'Data Structures: Heaps', 'https://www.youtube.com/embed/t0Cq6tVNRBA', '2019-03-16 12:15:29', '2019-03-16 12:15:29'),
(98, 3, 24, 1, 'heap tree in data structure', 'https://www.youtube.com/embed/j6iP4lDTKyI', '2019-03-16 12:15:52', '2019-03-16 12:15:52'),
(99, 3, 24, 1, 'Construction of Heap with Example', 'https://www.youtube.com/embed/6v-hT_RqLo0', '2019-03-16 12:16:14', '2019-03-16 12:16:14'),
(100, 3, 24, 1, 'Enqueue and Dequeue', 'https://www.youtube.com/embed/Ayh3w0S5Fho', '2019-03-16 12:16:36', '2019-03-16 12:16:36'),
(101, 3, 24, 1, 'Queue - Insertion and Deletion (Enqueue and Dequeue)', 'https://www.youtube.com/embed/M42PBBaWnk8', '2019-03-16 12:16:57', '2019-03-16 12:16:57'),
(102, 4, 26, 1, 'Introduction to Boolean Algebra (Part 1)', 'https://www.youtube.com/embed/WW-NPtIzHwk', '2019-03-16 13:22:28', '2019-03-16 13:22:28'),
(103, 4, 26, 1, 'Introduction to Boolean Algebra (Part 2)', 'https://www.youtube.com/embed/OjWmVCG8PLA', '2019-03-16 13:22:53', '2019-03-16 13:22:53'),
(104, 4, 26, 1, 'Boolean Algebra Examples (Part 1)', 'https://www.youtube.com/embed/k04ksfLBuak', '2019-03-16 13:23:14', '2019-03-16 13:23:14'),
(105, 4, 26, 1, 'Boolean Algebra Examples (Part 2)', 'https://www.youtube.com/embed/uPBYaCarXDM', '2019-03-16 13:23:34', '2019-03-16 13:23:34'),
(106, 4, 26, 1, 'Logic Gates (Part 1)', 'https://www.youtube.com/embed/xDARFvArIpc', '2019-03-16 13:23:55', '2019-03-16 13:23:55'),
(107, 4, 26, 1, 'Logic Gates (Part 2)', 'https://www.youtube.com/embed/iogRGu7nbJw', '2019-03-16 13:24:19', '2019-03-16 13:24:19'),
(108, 4, 26, 1, 'Logic Gates (Part 3)', 'https://www.youtube.com/embed/TbV2lVIdfEM', '2019-03-16 13:24:40', '2019-03-16 13:24:40'),
(109, 4, 26, 1, 'Logic Gates (Part 3)', 'https://www.youtube.com/embed/TbV2lVIdfEM', '2019-03-16 13:24:59', '2019-03-16 13:24:59'),
(110, 4, 26, 1, 'Logic Gates (Part 4)', 'https://www.youtube.com/embed/1kLbY1-f4rs', '2019-03-16 13:25:21', '2019-03-16 13:25:21'),
(111, 4, 26, 1, 'Logic Gates (Part 5)', 'https://www.youtube.com/embed/9VKHu3V4wEE', '2019-03-16 13:25:46', '2019-03-16 13:25:46'),
(112, 4, 26, 1, 'Logic Gates (Part 6)', 'https://www.youtube.com/embed/bd16TkFCDjM', '2019-03-16 13:26:07', '2019-03-16 13:26:07'),
(113, 4, 26, 1, 'NAND Gate as Universal Gate (Part 2)', 'https://www.youtube.com/embed/MZ_Pd40F4MU', '2019-03-16 13:26:50', '2019-03-16 13:26:50'),
(114, 4, 26, 1, 'NOR Gate as Universal Gate', 'https://www.youtube.com/embed/Z6Nds10n7rs', '2019-03-16 13:27:09', '2019-03-16 13:27:09'),
(115, 4, 26, 1, 'Introduction to Encoders and Decoders', 'https://www.youtube.com/embed/feBvhLFQEDk', '2019-03-16 13:27:29', '2019-03-16 13:27:29'),
(116, 4, 26, 1, 'Priority Encoder', 'https://www.youtube.com/embed/kEj-m3YuGa4', '2019-03-16 13:27:46', '2019-03-16 13:27:46'),
(117, 4, 26, 1, 'Decimal to BCD Encoder', 'https://www.youtube.com/embed/I_-3HN1ueNk', '2019-03-16 13:28:07', '2019-03-16 13:28:07'),
(118, 4, 26, 1, 'Octal to Binary Encoder', 'https://www.youtube.com/embed/IgaTy_Tm2_M', '2019-03-16 13:28:25', '2019-03-16 13:28:25'),
(119, 4, 26, 1, 'Hexadecimal to Binary Encoder', 'https://www.youtube.com/embed/6R-ZC8rLqm8', '2019-03-16 13:28:48', '2019-03-16 13:28:48'),
(120, 4, 26, 1, 'Full Adder Implementation using Decoder', 'https://www.youtube.com/embed/u863cwgdlnA', '2019-03-16 13:29:09', '2019-03-16 13:29:09'),
(121, 4, 26, 1, 'Half Adder', 'https://www.youtube.com/embed/aLUY-s7LSns', '2019-03-16 13:29:32', '2019-03-16 13:29:32'),
(122, 4, 26, 1, 'Full Adder', 'https://www.youtube.com/embed/RK3P9L2ZXk4', '2019-03-16 13:29:53', '2019-03-16 13:29:53'),
(123, 4, 26, 1, 'Full Adder using Half Adder', 'https://www.youtube.com/embed/Z_DYRgtAXfw', '2019-03-16 13:30:12', '2019-03-16 13:30:12'),
(124, 4, 26, 1, 'https://www.youtube.com/watch?v=NO7Gt8IDSGA&index=104&list=PLBlnK6fEyqRjMH3mWf6kwqiTbT798eAOm', 'https://www.youtube.com/embed/NO7Gt8IDSGA', '2019-03-16 13:30:36', '2019-03-16 13:30:36'),
(125, 4, 26, 1, 'Carry Lookahead Adder (Part 1', 'https://www.youtube.com/embed/6Z1WikEWxH0', '2019-03-16 13:30:55', '2019-03-16 13:30:55'),
(126, 4, 26, 1, 'Carry Lookahead Adder (Part 2', 'https://www.youtube.com/embed/9lyqSVKbyz8', '2019-03-16 13:31:14', '2019-03-16 13:31:14'),
(127, 4, 26, 1, 'BCD Adder', 'https://www.youtube.com/embed/9O7OJi7RCLQ', '2019-03-16 13:31:33', '2019-03-16 13:31:33'),
(128, 4, 26, 1, 'Introduction to Multiplexers', 'https://www.youtube.com/embed/FKvnmxte98A', '2019-03-16 13:32:03', '2019-03-16 13:32:03'),
(129, 4, 26, 1, '4X1 Multiplexer', 'https://www.youtube.com/embed/g1Lfz1XgrH8', '2019-03-16 13:32:34', '2019-03-16 13:32:34'),
(130, 4, 26, 1, '8X1 Multiplexer', 'https://www.youtube.com/embed/b0z7YKKCCyY', '2019-03-16 13:32:52', '2019-03-16 13:32:52'),
(131, 4, 26, 1, 'MUX Tree Basic | 4X1 MUX using 2X1 MUX', 'https://www.youtube.com/embed/_nd77x1ooGQ', '2019-03-16 13:33:19', '2019-03-16 13:33:19'),
(132, 4, 26, 1, 'Sum of Products (Part 1)', 'https://www.youtube.com/embed/xnLBbOYYnHM', '2019-03-16 13:33:42', '2019-03-16 13:33:42'),
(133, 4, 26, 1, 'Sum of Products (Part 2)', 'https://www.youtube.com/embed/NGgNoa0_zns', '2019-03-16 13:34:06', '2019-03-16 13:34:06'),
(134, 4, 26, 1, 'Product of Sums (Part 1)', 'https://www.youtube.com/embed/nXsiLPJfDZ4', '2019-03-16 13:34:32', '2019-03-16 13:34:32'),
(135, 4, 26, 1, 'SOP and POS Form Examples', 'https://www.youtube.com/embed/K2cpJex0o_A', '2019-03-16 13:34:49', '2019-03-16 13:34:49'),
(136, 4, 26, 1, 'Introduction to Number Systems', 'https://www.youtube.com/embed/crSGS1uBSNQ', '2019-03-16 13:35:42', '2019-03-16 13:35:42'),
(137, 4, 26, 1, 'Binary Number System', 'https://www.youtube.com/embed/w7ZLvYAi6pY', '2019-03-16 13:36:09', '2019-03-16 13:36:09'),
(138, 4, 26, 1, '1\'s and 2\'s Complement', 'https://www.youtube.com/embed/S_fPMrrIA30', '2019-03-16 13:36:36', '2019-03-16 13:36:36'),
(139, 4, 26, 1, 'Shortcut for 2\'s Complement', 'https://www.youtube.com/embed/V-e9Q9YWC6U', '2019-03-16 13:37:04', '2019-03-16 13:37:04'),
(140, 4, 26, 1, 'Binary Coded Decimal (BCD) Code', 'https://www.youtube.com/embed/0rLiYpy2CqQ', '2019-03-16 13:37:25', '2019-03-16 13:37:25'),
(141, 4, 26, 1, 'BCD Addition', 'https://www.youtube.com/embed/yPu57aSj9kA', '2019-03-16 13:37:43', '2019-03-16 13:37:43'),
(142, 4, 26, 1, 'Excess-3 Code (XS-3 Code)', 'https://www.youtube.com/embed/LHw8TVk9iOY', '2019-03-16 13:38:04', '2019-03-16 13:38:04'),
(143, 4, 26, 1, 'Excess-3 Code Addition', 'https://www.youtube.com/embed/CXn4lxBlO2U', '2019-03-16 13:38:24', '2019-03-16 13:38:24'),
(144, 4, 26, 1, 'Introduction to Gray Code', 'https://www.youtube.com/embed/0dPN4gh0CKI', '2019-03-16 13:38:41', '2019-03-16 13:38:41'),
(145, 4, 26, 1, 'Binary to Gray Code Conversion', 'https://www.youtube.com/embed/cF-Q5j7RUEw', '2019-03-16 13:39:07', '2019-03-16 13:39:07'),
(146, 4, 26, 1, 'Gray Code to Binary Conversion', 'https://www.youtube.com/embed/-qMm9hhvp9Y', '2019-03-16 13:39:25', '2019-03-16 13:39:25'),
(147, 4, 26, 1, 'What is Parity?', 'https://www.youtube.com/embed/DdMcAUlxh1M', '2019-03-16 13:39:52', '2019-03-16 13:39:52'),
(148, 4, 26, 1, '4-Bit Even Parity Generator', 'https://www.youtube.com/embed/RfTGvpY2Z5Y', '2019-03-16 13:40:10', '2019-03-16 13:40:10'),
(149, 4, 26, 1, 'Hamming Code | Error detection', 'https://www.youtube.com/embed/1A_NcXxdoCc', '2019-03-16 13:40:38', '2019-03-16 13:40:38'),
(150, 4, 26, 1, 'Hamming Code | Error Correction', 'https://www.youtube.com/embed/wbH2VxzmoZk', '2019-03-16 13:40:56', '2019-03-16 13:40:56'),
(151, 4, 26, 1, 'Karnaugh Map (K\' Map) Part 1', 'https://www.youtube.com/embed/FPrcIhqNPVo', '2019-03-16 13:41:13', '2019-03-16 13:41:13'),
(152, 4, 26, 1, 'Karnaugh Map (K\' Map) Part 2', 'https://www.youtube.com/embed/uWjKzsWXAF4', '2019-03-16 13:41:34', '2019-03-16 13:41:34'),
(153, 4, 26, 1, 'Karnaugh Map (K\' Map) Part 3', 'https://www.youtube.com/embed/p7ittaZrZ1', '2019-03-16 13:41:51', '2019-03-16 13:41:51'),
(154, 4, 26, 1, 'K\' Map and Implicants', 'https://www.youtube.com/embed/J_t_7npo0CE', '2019-03-16 13:42:12', '2019-03-16 13:42:12'),
(155, 4, 26, 1, '4 Variable Karnaugh Map (Part 1)', 'https://www.youtube.com/embed/k_gavfON5uA', '2019-03-16 13:42:33', '2019-03-16 13:42:33'),
(156, 4, 26, 1, '4 Variable Karnaugh Map (Part 2)', 'https://www.youtube.com/embed/a89jQWIGrY4', '2019-03-16 13:42:51', '2019-03-16 13:42:51'),
(157, 4, 26, 1, '4 Variable Karnaugh Map (Part 3)', 'https://www.youtube.com/embed/nIxpTuR0E0s', '2019-03-16 13:43:07', '2019-03-16 13:43:07'),
(158, 4, 26, 1, 'Don\'t Care in Karnaugh Map (K\' Map)', 'https://www.youtube.com/embed/_F9nAb6m4U4', '2019-03-16 13:43:27', '2019-03-16 13:43:27'),
(159, 4, 26, 1, 'Don\'t Care in K\' Map (Response to Doubt)', 'https://www.youtube.com/embed/WUEmPO13iAI', '2019-03-16 13:44:00', '2019-03-16 13:44:00'),
(160, 5, 35, 1, 'Adjacency Matrix', 'https://www.youtube.com/embed/9C2cpQZVRBA', '2019-03-17 03:22:45', '2019-03-17 03:22:45'),
(161, 5, 35, 1, 'Adjacency List', 'https://www.youtube.com/embed/k1wraWzqtvQ', '2019-03-17 03:23:12', '2019-03-17 03:23:12'),
(162, 5, 35, 1, 'Breadth First Search | BFS', 'https://www.youtube.com/embed/GVSxGBCtQCE', '2019-03-17 03:23:37', '2019-03-17 03:23:37'),
(164, 5, 35, 1, 'Depth First Search | DFS (Part - 1', 'https://www.youtube.com/embed/Lax2okU8yM8', '2019-03-17 03:24:28', '2019-03-17 03:24:28'),
(165, 5, 35, 1, 'Depth First Search | DFS (Part - 2)', 'https://www.youtube.com/embed/CySyAj1v1rA', '2019-03-17 03:24:52', '2019-03-17 03:24:52'),
(166, 5, 35, 1, 'Topological Sorting', 'https://www.youtube.com/embed/Q9PIxaNGnig', '2019-03-17 03:25:18', '2019-03-17 03:25:18'),
(167, 5, 35, 1, 'Topological Sort Graph Algorithm', 'https://www.youtube.com/embed/ddTC4Zovtbc', '2019-03-17 03:25:38', '2019-03-17 03:25:38'),
(168, 5, 35, 1, 'Prim\'s algorithm for Minimum Spanning Tree', 'https://www.youtube.com/embed/xENj6Ns3CfU', '2019-03-17 03:25:58', '2019-03-17 03:25:58'),
(169, 5, 35, 1, 'Prim\'s Algorithm: Minimum Spanning Tree', 'https://www.youtube.com/embed/Uj47dxYPow8', '2019-03-17 03:26:19', '2019-03-17 03:26:19'),
(170, 5, 35, 1, 'Prim\'s Algorithm: Minimal Spanning Tree', 'https://www.youtube.com/embed/YyLaRffCdk4', '2019-03-17 03:26:42', '2019-03-17 03:26:42'),
(171, 5, 35, 1, 'Kruskal algorithm for Minimum Spanning Tree', 'https://www.youtube.com/embed/ttbHBbNRRYE', '2019-03-17 03:27:03', '2019-03-17 03:27:03'),
(172, 5, 35, 1, 'Prims and Kruskals Algorithms - Greedy Method', 'https://www.youtube.com/embed/4ZlRH0eK-qQ', '2019-03-17 03:27:28', '2019-03-17 03:27:28'),
(173, 5, 35, 1, 'Kruskal\'s Algorithm: Minimum Spanning Tree (MST)', 'https://www.youtube.com/embed/Yo7sddEVONg', '2019-03-17 03:27:49', '2019-03-17 03:27:49'),
(174, 5, 35, 1, 'Dijkstra\'s Shortest Path Algorithm', 'https://www.youtube.com/embed/qx9sJ3O3JM0', '2019-03-17 03:28:10', '2019-03-17 03:28:10'),
(175, 5, 35, 1, 'Dijkstra’s Shortest Path Algorithm]', 'https://www.youtube.com/embed/pVfj6mxhdMw', '2019-03-17 03:28:35', '2019-03-17 03:28:35'),
(176, 5, 35, 1, 'Dijkstra Algorithm - Single Source Shortest Path - Greedy Method]', 'https://www.youtube.com/embed/XB4MIexjvY0', '2019-03-17 03:28:58', '2019-03-17 03:28:58'),
(177, 5, 35, 1, 'Longest Increasing Subsequence', 'https://www.youtube.com/embed/Ns4LCeeOFS4', '2019-03-17 03:29:19', '2019-03-17 03:29:19'),
(178, 5, 35, 1, 'Longest Increasing Subsequence', 'https://www.youtube.com/embed/4fQJGoeW5VE', '2019-03-17 03:29:45', '2019-03-17 03:29:45'),
(179, 5, 35, 1, 'Longest Increasing Subsequence', 'https://www.youtube.com/embed/CE2b_-XfVDk', '2019-03-17 03:30:08', '2019-03-17 03:30:08'),
(180, 5, 35, 1, 'Fractional Knapsack Problem', 'https://www.youtube.com/embed/m1p-eWxrt6g', '2019-03-17 03:30:29', '2019-03-17 03:30:29'),
(181, 5, 35, 1, 'Knapsack Problem - Greedy Method', 'https://www.youtube.com/embed/oTTzNMHM05I', '2019-03-17 03:30:52', '2019-03-17 03:30:52'),
(182, 5, 35, 1, 'Longest Common Subsequence', 'https://www.youtube.com/embed/HgUOWB0StNE', '2019-03-17 03:31:12', '2019-03-17 03:31:12'),
(183, 5, 35, 1, 'Longest Common Subsequence', 'https://www.youtube.com/embed/NnD96abizww', '2019-03-17 03:31:36', '2019-03-17 03:31:36'),
(184, 5, 35, 1, 'Longest Common Subsequence (LCS)', 'https://www.youtube.com/embed/sSno9rV8Rhg', '2019-03-17 03:32:00', '2019-03-17 03:32:00'),
(185, 5, 35, 1, 'Merge sort algorithm', 'https://www.youtube.com/embed/TzeBrDU-JaY', '2019-03-17 03:32:21', '2019-03-17 03:32:21'),
(186, 5, 35, 1, 'Merge Sort', 'https://www.youtube.com/embed/JSceec-wEyw', '2019-03-17 03:32:48', '2019-03-17 03:32:48'),
(187, 5, 35, 1, 'Quicksort algorithm', 'https://www.youtube.com/embed/COk73cpQbFQ', '2019-03-17 03:33:11', '2019-03-17 03:33:11'),
(188, 5, 35, 1, 'Insertion sort algorithm', 'https://www.youtube.com/embed/i-SKeOcBwko', '2019-03-17 03:34:08', '2019-03-17 03:34:08'),
(189, 5, 35, 1, 'Insertion Sort', 'https://www.youtube.com/embed/OGzPmgsI-pQ', '2019-03-17 03:34:28', '2019-03-17 03:34:28'),
(190, 5, 35, 1, 'Bubble sort algorithm', 'https://www.youtube.com/embed/Jdtq5uKz-w4', '2019-03-17 03:34:47', '2019-03-17 03:34:47'),
(191, 5, 35, 1, 'Bubble Sort', 'https://www.youtube.com/embed/nmhjrI-aW5o', '2019-03-17 03:35:09', '2019-03-17 03:35:09'),
(192, 5, 35, 1, 'Selection sort algorithm', 'https://www.youtube.com/embed/GUDLRan2DWM', '2019-03-17 03:35:30', '2019-03-17 03:35:30'),
(193, 5, 35, 1, 'Selection Sort', 'https://www.youtube.com/embed/xWBP4lzkoyM', '2019-03-17 03:35:52', '2019-03-17 03:35:52'),
(194, 4, 30, 1, 'UML Class Diagram Tutorial', 'https://www.youtube.com/embed/UI6lqHOVHic', '2019-03-17 03:56:45', '2019-03-17 03:56:45'),
(195, 4, 30, 1, 'UML Use Case Diagram Tutorial', 'https://www.youtube.com/embed/zid-MVo7M-E', '2019-03-17 03:57:12', '2019-03-17 03:57:12'),
(196, 4, 30, 1, 'Object Diagram', 'https://www.youtube.com/embed/sljwzrlJrjw', '2019-03-17 03:57:42', '2019-03-17 03:57:42'),
(197, 6, 38, 1, 'Global AlignmenT', 'https://www.youtube.com/embed/jS-WcdOZCCk', '2019-03-17 04:13:17', '2019-03-17 04:13:17'),
(198, 6, 38, 1, 'Local AlignmenT', 'https://www.youtube.com/embed/rxfiF43W0Jk', '2019-03-17 04:13:38', '2019-03-17 04:13:38'),
(199, 6, 38, 1, 'Fasta Algorithm | DNA Sequence Alignment', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 04:13:59', '2019-03-17 04:13:59'),
(200, 1, 11, 1, 'Decimal to Binary Conversion', 'https://www.youtube.com/embed/2U9b76JRz7s', '2019-03-17 04:29:33', '2019-03-17 04:29:33'),
(201, 1, 11, 1, 'Decimal to Octal Conversion', 'https://www.youtube.com/embed/1J89-aWI-5Y', '2019-03-17 04:29:54', '2019-03-17 04:29:54'),
(202, 1, 11, 1, 'Decimal to Hexadecimal Conversion', 'https://www.youtube.com/embed/uVpQ9pPskNI', '2019-03-17 04:30:14', '2019-03-17 04:30:14'),
(203, 1, 11, 1, 'Binary to Decimal Conversion]', 'https://www.youtube.com/embed/6Tt-RA6KD30', '2019-03-17 04:30:36', '2019-03-17 04:30:36'),
(204, 1, 11, 1, 'Octal to Decimal Conversion', 'https://www.youtube.com/embed/6WGTf0fg4zA', '2019-03-17 04:30:57', '2019-03-17 04:30:57'),
(205, 1, 11, 1, 'Hexadecimal to Decimal Conversio', 'https://www.youtube.com/embed/1tHgs0mrZ5I', '2019-03-17 04:31:18', '2019-03-17 04:31:18'),
(206, 1, 11, 1, 'Octal to Binary & Binary to Octal Conversion', 'https://www.youtube.com/embed/urasJ3jx08I', '2019-03-17 04:31:37', '2019-03-17 04:31:37'),
(207, 1, 11, 1, 'Hexadecimal to Binary & Binary to Hexadecimal Conversion', 'https://www.youtube.com/embed/WI6Uvci2p7E', '2019-03-17 04:32:10', '2019-03-17 04:32:10'),
(208, 1, 11, 1, 'Hexadecimal to Octal & Octal to Hexadecimal Conversion', 'https://www.youtube.com/embed/s9kwJ03uzmE', '2019-03-17 04:32:31', '2019-03-17 04:32:31'),
(209, 1, 11, 1, 'Binary Addition', 'https://www.youtube.com/embed/Ri0VhKhw7dY', '2019-03-17 04:32:51', '2019-03-17 04:32:51'),
(210, 1, 11, 1, 'Binary Subtraction', 'https://www.youtube.com/embed/31N9tjaWZbs', '2019-03-17 04:33:12', '2019-03-17 04:33:12'),
(211, 1, 11, 1, 'Binary Multiplication', 'https://www.youtube.com/embed/_kwXcIV7dyo', '2019-03-17 04:33:32', '2019-03-17 04:33:32'),
(212, 1, 11, 1, 'Binary Division', 'https://www.youtube.com/embed/VKemv9u40gc', '2019-03-17 04:33:55', '2019-03-17 04:33:55'),
(213, 1, 11, 1, 'Octal Addition', 'https://www.youtube.com/embed/Qq-4h4tlKAQ', '2019-03-17 04:34:14', '2019-03-17 04:34:14'),
(214, 1, 11, 1, 'Octal Subtraction', 'https://www.youtube.com/embed/ynvcRidq--0', '2019-03-17 04:34:40', '2019-03-17 04:34:40'),
(215, 1, 11, 1, 'Octal Multiplication', 'https://www.youtube.com/embed/Cvk7FyepPXQ', '2019-03-17 04:34:58', '2019-03-17 04:34:58'),
(216, 1, 11, 1, 'Hexadecimal Addition', 'https://www.youtube.com/embed/y0B6tuC6niE', '2019-03-17 04:35:19', '2019-03-17 04:35:19'),
(217, 1, 11, 1, 'Hexadecimal Subtraction', 'https://www.youtube.com/embed/3mV7q3_OAGM', '2019-03-17 04:35:39', '2019-03-17 04:35:39'),
(218, 1, 11, 1, 'Hexadecimal Multiplication', 'https://www.youtube.com/embed/66sIxqnXUvI', '2019-03-17 04:36:08', '2019-03-17 04:36:08'),
(219, 8, 51, 1, 'Gantt Charts', 'https://www.youtube.com/embed/LCAdC6x_ChU', '2019-03-17 06:13:30', '2019-03-17 06:13:30'),
(220, 8, 51, 1, 'Critical Path', 'https://www.youtube.com/embed/Es6SAlzbJvU', '2019-03-17 06:14:07', '2019-03-17 06:14:07'),
(221, 8, 51, 1, 'Slack Time Float time', 'https://www.youtube.com/embed/YqqwXkZDm4E', '2019-03-17 06:14:45', '2019-03-17 06:14:45'),
(222, 8, 51, 1, 'Network Activity Part 1', 'https://www.youtube.com/embed/_aDgHpoeuRo', '2019-03-17 06:15:45', '2019-03-17 06:15:45'),
(223, 8, 51, 1, 'Network Activity Part 2', 'https://www.youtube.com/embed/1QOWi99IucI', '2019-03-17 06:16:11', '2019-03-17 06:16:11'),
(224, 8, 51, 1, 'Structured English', 'https://www.youtube.com/embed/1QOWi99IucI', '2019-03-17 06:16:47', '2019-03-17 06:16:47'),
(225, 8, 51, 1, 'DFD System', 'https://www.youtube.com/embed/0xBXK4zV2YM', '2019-03-17 06:17:15', '2019-03-17 06:17:15'),
(226, 8, 51, 1, 'Decision tree 1', 'https://www.youtube.com/embed/S6rsjDfVGjo', '2019-03-17 06:17:55', '2019-03-17 06:17:55'),
(227, 4, 29, 1, 'Java Programming Tutorial - 1 - Installing the JDK', 'https://www.youtube.com/embed/Hl-zzrqQoSE', '2019-03-17 06:37:36', '2019-03-17 06:37:36'),
(228, 4, 29, 1, 'Java Programming Tutorial - 2 - Running a Java Program', 'https://www.youtube.com/embed/5u8rFbpdvds', '2019-03-17 06:38:02', '2019-03-17 06:38:02'),
(229, 4, 30, 1, 'Java Programming Tutorial - 3 - Downloading Eclipse', 'https://www.youtube.com/embed/CE8UIbb_4iM', '2019-03-17 06:38:25', '2019-03-17 06:38:25'),
(230, 4, 29, 1, 'Java Programming Tutorial - 4 - Hello YouTube', 'https://www.youtube.com/embed/SHIT5VkNrCg', '2019-03-17 06:38:52', '2019-03-17 06:38:52'),
(231, 4, 29, 1, 'Java Programming Tutorial - 5 - Variables', 'https://www.youtube.com/embed/gtQJXzi3Yns', '2019-03-17 06:39:16', '2019-03-17 06:39:16'),
(232, 4, 29, 1, 'Java Programming Tutorial - 6 - Getting User Input', 'https://www.youtube.com/embed/5DdacOkrTgo', '2019-03-17 06:39:39', '2019-03-17 06:39:39'),
(233, 4, 29, 1, 'Java Programming Tutorial - 7 - Building a Basic Calculator', 'https://www.youtube.com/embed/ANuuSFY2BbY', '2019-03-17 06:40:00', '2019-03-17 06:40:00'),
(234, 4, 29, 1, 'Java Programming Tutorial - 8 - Math Operators', 'https://www.youtube.com/embed/8ZaTSedtf9M', '2019-03-17 06:40:20', '2019-03-17 06:40:20'),
(235, 4, 29, 1, 'Java Programming Tutorial - 9 - Increment Operators', 'https://www.youtube.com/embed/ydcTx6idTs0', '2019-03-17 06:40:43', '2019-03-17 06:40:43'),
(236, 4, 29, 1, 'Java Programming Tutorial - 10 - If Statement', 'https://www.youtube.com/embed/iMeaovDbgkQ', '2019-03-17 06:41:06', '2019-03-17 06:41:06'),
(237, 4, 29, 1, 'Java Programming Tutorial - 12 - Switch Statement', 'https://www.youtube.com/embed/RVRPmeccFT0', '2019-03-17 06:41:41', '2019-03-17 06:41:41'),
(238, 4, 29, 1, 'Java Programming Tutorial - 13 - While Loop', 'https://www.youtube.com/embed/8ZuWD2CBjgs', '2019-03-17 06:42:03', '2019-03-17 06:42:03'),
(239, 4, 29, 1, 'Java Programming Tutorial - 14 - Using Multiple Classes', 'https://www.youtube.com/embed/XqTg2buXS5o', '2019-03-17 06:42:24', '2019-03-17 06:42:24'),
(240, 4, 29, 1, 'Java Programming Tutorial - 15 - Use Methods with Parameters', 'https://www.youtube.com/embed/7MBgaF8wXls', '2019-03-17 06:42:54', '2019-03-17 06:42:54'),
(241, 4, 29, 1, 'Java Programming Tutorial - 16 - Many Methods and Instances', 'https://www.youtube.com/embed/9t78g0U8VyQ', '2019-03-17 06:43:28', '2019-03-17 06:43:28'),
(242, 4, 29, 1, 'Java Programming Tutorial - 17 - Constructors', 'https://www.youtube.com/embed/tPFuVRbUTwA', '2019-03-17 06:43:53', '2019-03-17 06:43:53'),
(243, 4, 29, 1, 'Java Programming Tutorial - 18 - Nested if Statements', 'https://www.youtube.com/embed/Y4xFGCyt1ww', '2019-03-17 06:44:18', '2019-03-17 06:44:18'),
(244, 4, 29, 1, 'Java Programming Tutorial - 19 - else if Statement', 'https://www.youtube.com/embed/C0YRYVn_BeI', '2019-03-17 06:44:43', '2019-03-17 06:44:43'),
(245, 4, 29, 1, 'Java Programming Tutorial - 20 - Conditional Operators', 'https://www.youtube.com/embed/Y6NheSwTsDs', '2019-03-17 06:45:21', '2019-03-17 06:45:21'),
(246, 4, 29, 1, 'Java Programming Tutorial - 21 - Simple Averaging Program', 'https://www.youtube.com/embed/KXuQQh6AynQ', '2019-03-17 06:45:52', '2019-03-17 06:45:52'),
(247, 4, 29, 1, 'Java Programming Tutorial - 22 - for Loops', 'https://www.youtube.com/embed/rjkYAs6gAkk', '2019-03-17 06:46:20', '2019-03-17 06:46:20'),
(248, 4, 29, 1, 'Java Programming Tutorial - 23 - Compound Interest Program', 'https://www.youtube.com/embed/T9TcAm9g0mo', '2019-03-17 06:46:49', '2019-03-17 06:46:49'),
(249, 4, 29, 1, 'Java Programming Tutorial - 24 - do while Loops', 'https://www.youtube.com/embed/nfr52iR0Pyg', '2019-03-17 06:47:16', '2019-03-17 06:47:16'),
(250, 4, 29, 1, 'Java Programming Tutorial - 25 - Math Class Methods', 'https://www.youtube.com/embed/JzMdepMLW44', '2019-03-17 06:47:44', '2019-03-17 06:47:44'),
(251, 4, 29, 1, 'Java Programming Tutorial - 26 - Random Number Generator', 'https://www.youtube.com/embed/AhwIYAXPASw', '2019-03-17 06:48:35', '2019-03-17 06:48:35'),
(252, 4, 29, 1, 'Java Programming Tutorial - 27 - Introduction to Arrays', 'https://www.youtube.com/embed/L06uGnF4IpY', '2019-03-17 06:51:14', '2019-03-17 06:51:14'),
(253, 4, 29, 1, 'Java Programming Tutorial - 28 - Creating an Array Table', 'https://www.youtube.com/embed/nTF-RcgsV0E', '2019-03-17 06:51:48', '2019-03-17 06:51:48'),
(254, 4, 29, 1, 'Java Programming Tutorial - 29 - Summing Elements of Arrays', 'https://www.youtube.com/embed/etyrkipdKvc', '2019-03-17 06:52:18', '2019-03-17 06:52:18'),
(255, 4, 29, 1, 'Java Programming Tutorial - 30 - Array Elements as Counters', 'https://www.youtube.com/embed/pHxtKDENDdE', '2019-03-17 06:52:42', '2019-03-17 06:52:42'),
(256, 10, 62, 1, 'Breadth First Search', 'https://www.youtube.com/embed/QuwhTIy7WqQ', '2019-03-17 07:51:25', '2019-03-17 07:51:25'),
(257, 10, 62, 1, 'Depth First Search', 'https://www.youtube.com/embed/OALQkbggDbw', '2019-03-17 07:51:51', '2019-03-17 07:51:51'),
(258, 10, 62, 1, 'Best First Search', 'https://www.youtube.com/embed/cnPm-wz61Zo', '2019-03-17 07:52:17', '2019-03-17 07:52:17'),
(259, 10, 62, 1, 'Bi-directional Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:52:40', '2019-03-17 07:52:40'),
(260, 10, 62, 1, 'Uniform Cost Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:53:01', '2019-03-17 07:53:01'),
(261, 10, 62, 1, 'Heuristic Search & Functions', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:53:25', '2019-03-17 07:53:25'),
(262, 10, 62, 1, 'Iterative Deepening Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:53:46', '2019-03-17 07:53:46'),
(263, 10, 62, 1, 'A* Search in Artificial Intelligence', 'https://www.youtube.com/embed/AEhsosIqWe8', '2019-03-17 07:54:08', '2019-03-17 07:54:08'),
(264, 10, 62, 1, 'Greedy Search Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:54:29', '2019-03-17 07:54:29'),
(265, 10, 62, 1, 'MIN Max Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:54:53', '2019-03-17 07:54:53'),
(266, 10, 62, 1, 'Alpha–beta pruning', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:55:16', '2019-03-17 07:55:16'),
(267, 10, 62, 1, 'Hill Climbing Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:55:38', '2019-03-17 07:55:38'),
(268, 10, 62, 1, '8 Puzzle Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:56:02', '2019-03-17 07:56:02'),
(269, 10, 62, 1, 'Genetic Algorithms | 8 Queen Problem', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-17 07:56:30', '2019-03-17 07:56:30'),
(270, 10, 60, 1, 'Simulation of Dump Truck Problem -Part I', 'https://www.youtube.com/embed/W-vhldzeJdE', '2019-03-17 08:24:10', '2019-03-17 08:24:10'),
(271, 10, 60, 1, 'Simulation of Dump Truck Problem-Part II', 'https://www.youtube.com/embed/LAoh0ejmoSY', '2019-03-17 08:24:36', '2019-03-17 08:24:36'),
(272, 10, 60, 1, 'Telephony System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:25:13', '2019-03-17 08:25:13'),
(273, 10, 60, 1, 'Simulation of Three Bearing Problem', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:25:34', '2019-03-17 08:25:34'),
(274, 10, 60, 1, 'Simulation of (M,N) Inventory System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:25:55', '2019-03-17 08:25:55'),
(275, 10, 60, 1, 'Simulation of Inventory System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:26:27', '2019-03-17 08:26:27'),
(276, 10, 60, 1, 'Single Queue Double Server || Simulation of Able and Baker', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:27:20', '2019-03-17 08:27:20'),
(277, 10, 60, 1, 'Single Queue Single Server || Simulation of Single Queue Single Server', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-17 08:28:01', '2019-03-17 08:28:01'),
(278, 11, 64, 1, 'Line Drawing Algorithm', 'https://www.youtube.com/embed/rjrGUPBON50', '2019-03-17 08:40:11', '2019-03-17 08:40:11'),
(279, 11, 68, 1, 'DDA Algorithm', 'https://www.youtube.com/embed/LG3juPvgQXc', '2019-03-17 08:40:29', '2019-03-17 08:40:29'),
(280, 11, 68, 1, 'Bresenham Line Drawing Algorithm', 'https://www.youtube.com/embed/hSiRFkMLuE0', '2019-03-17 08:40:59', '2019-03-17 08:40:59'),
(281, 11, 68, 1, 'Midpoint Circle Algorithm', 'https://www.youtube.com/embed/W3k9EzEeOcc', '2019-03-17 08:41:21', '2019-03-17 08:41:21'),
(282, 11, 68, 1, 'Midpoint Circle Algorithm Example 1', 'https://www.youtube.com/embed/VJ9ArxiIeJQ', '2019-03-17 08:41:42', '2019-03-17 08:41:42'),
(283, 11, 68, 1, 'Cohen Sutherland Line Clipping', 'https://www.youtube.com/embed/j1ine7FfCBo', '2019-03-17 08:42:04', '2019-03-17 08:42:04'),
(284, 11, 68, 1, 'Cohen Sutherland Line Clipping Problem 1', 'https://www.youtube.com/embed/JUaFXf4IBrI', '2019-03-17 08:42:24', '2019-03-17 08:42:24'),
(285, 11, 68, 1, 'Cohen Sutherland Line Clipping Problem 2', 'https://www.youtube.com/embed/kwt4G9zHfgI', '2019-03-17 08:42:47', '2019-03-17 08:42:47'),
(286, 11, 68, 1, 'Sutherland Hodgman Polygon Clipping Algorithm', 'https://www.youtube.com/embed/HUq0XIvOwsc', '2019-03-17 08:43:12', '2019-03-17 08:43:12'),
(287, 11, 68, 1, 'Sutherland Hodgman Polygon Clipping Algorithm Problem 1', 'https://www.youtube.com/embed/LQQUu_mbePY', '2019-03-17 08:43:33', '2019-03-17 08:43:33'),
(288, 11, 68, 1, 'Sutherland Hodgman Polygon Clipping Algorithm Problem 1', 'https://www.youtube.com/embed/LQQUu_mbePY', '2019-03-17 08:47:00', '2019-03-17 08:47:00'),
(289, 11, 68, 1, 'Weiler Atherton Polygon Clipping Algorithm', 'https://www.youtube.com/embed/CBo96CX6r5E', '2019-03-17 08:47:36', '2019-03-17 08:47:36'),
(290, 11, 68, 1, 'Weiler Atherton Polygon Clipping Algorithm problem 1', 'https://www.youtube.com/embed/4qsAtoJXTKQ', '2019-03-17 08:48:38', '2019-03-17 08:48:38'),
(291, 11, 64, 1, 'Data Analysis Box Plots | Five Number Summary | Boxplot With Outliers', 'https://www.youtube.com/embed/YGYqXHXQbWU', '2019-03-17 08:59:46', '2019-03-17 08:59:46'),
(292, 11, 64, 1, 'Arithmetic Mean | Weighted Mean | Trimmed Mean | Mean Median Mode', 'https://www.youtube.com/embed/wYy55V5idaE', '2019-03-17 09:00:13', '2019-03-17 09:00:13'),
(293, 11, 64, 1, 'Min-Max Normalization | Normal Distribution', 'https://www.youtube.com/embed/Uciw54ipS7E', '2019-03-17 09:00:37', '2019-03-17 09:00:37'),
(294, 11, 64, 1, 'Binning | Binning Method | Binning Algorithm', 'https://www.youtube.com/embed/L6OJT3LjQ0M', '2019-03-17 09:01:07', '2019-03-17 09:01:07'),
(295, 11, 64, 1, 'Z Score Normalization', 'https://www.youtube.com/embed/VPZVkyeSihE', '2019-03-17 09:01:30', '2019-03-17 09:01:30'),
(296, 11, 64, 1, 'Apriori Algorithm', 'https://www.youtube.com/embed/-mg2rMqmyNA', '2019-03-17 09:02:27', '2019-03-17 09:02:27'),
(297, 11, 64, 1, 'FP Growth | FP Growth Algorithm', 'https://www.youtube.com/embed/rIc9QLltYd8', '2019-03-17 09:02:49', '2019-03-17 09:02:49'),
(298, 11, 64, 1, 'Decision Tree Analysis', 'https://www.youtube.com/embed/52_65Y-tGUU', '2019-03-17 09:03:10', '2019-03-17 09:03:10'),
(299, 11, 64, 1, 'Naive Bayes Algorithm', 'https://www.youtube.com/embed/58AaJOz_sHQ', '2019-03-17 09:03:30', '2019-03-17 09:03:30'),
(300, 11, 64, 1, 'K Means Algorithm', 'https://www.youtube.com/embed/m0xl8zf0-Yo', '2019-03-17 09:03:49', '2019-03-17 09:03:49'),
(301, 11, 64, 1, 'K Nearest Neighbor', 'https://www.youtube.com/embed/tQPC5-bRh9I', '2019-03-17 09:04:09', '2019-03-17 09:04:09'),
(302, 11, 64, 1, 'Data Mining | Chi-Square Test for Nominal Data | Correlation Test for Nominal Data', 'https://www.youtube.com/embed/MtuOCS-wipM', '2019-03-17 09:04:31', '2019-03-17 09:04:31'),
(303, 11, 65, 1, 'Single Light On Off Using Arduino', 'https://www.youtube.com/embed/Q3E4SmlGaFQ', '2019-03-17 09:12:23', '2019-03-17 09:12:23'),
(304, 11, 65, 1, 'Fade In Fade Out effect In LED Light', 'https://www.youtube.com/embed/nvZNDVvr8xg', '2019-03-17 09:12:49', '2019-03-17 09:12:49'),
(305, 11, 65, 1, 'Two Light On Off Using Arduino', 'https://www.youtube.com/embed/SzUdGjfYncY', '2019-03-17 09:13:10', '2019-03-17 09:13:10'),
(306, 11, 65, 1, 'light on off using switch In Arduino', 'https://www.youtube.com/embed/yFKs0eg_EQA', '2019-03-17 09:13:35', '2019-03-17 09:13:35'),
(307, 11, 65, 1, 'multiple light on off using switch In Arduino', 'https://www.youtube.com/embed/wYCV4hyB1dg', '2019-03-17 09:14:00', '2019-03-17 09:14:00'),
(308, 11, 65, 1, 'LED Control with LDR', 'https://www.youtube.com/embed/4fN1aJMH9mM', '2019-03-17 09:14:25', '2019-03-17 09:14:25'),
(309, 11, 65, 1, 'LM35-Temperature Sensor arduino', 'https://www.youtube.com/embed/3Xc2sPhwWEc', '2019-03-17 09:14:47', '2019-03-17 09:14:47'),
(310, 11, 65, 1, 'Relay', 'https://www.youtube.com/embed/Z6JgImrXaUI', '2019-03-17 09:15:06', '2019-03-17 09:15:06'),
(311, 11, 65, 1, 'Ultrasonic Distance Sensor', 'https://www.youtube.com/embed/HynLoCtUVtU', '2019-03-17 09:15:28', '2019-03-17 09:15:28'),
(312, 11, 65, 1, 'PIR sensor Arduino', 'https://www.youtube.com/embed/6Fdrr_1guok', '2019-03-17 09:15:51', '2019-03-17 09:15:51'),
(313, 11, 65, 1, 'DC Motors Arduino', 'https://www.youtube.com/embed/G2WJvblxAGQ', '2019-03-17 09:16:10', '2019-03-17 09:16:10'),
(314, 11, 65, 1, 'C Motor Control with L293D Motor Driver', 'https://www.youtube.com/embed/d7oFD-zQpuQ', '2019-03-17 09:16:32', '2019-03-17 09:16:32'),
(315, 11, 65, 1, 'buzzer Arduino', 'https://www.youtube.com/embed/PLRkk5dYxcs', '2019-03-17 09:16:53', '2019-03-17 09:16:53'),
(316, 11, 65, 1, 'servo motor Arduino', 'https://www.youtube.com/embed/kUHmYKWwuWs', '2019-03-17 09:17:14', '2019-03-17 09:17:14'),
(317, 11, 65, 1, 'LCD', 'https://www.youtube.com/embed/Mr9FQKcrGpA', '2019-03-17 09:17:36', '2019-03-17 09:17:36'),
(318, 10, 58, 1, 'How to connect to a database in PHP', 'https://www.youtube.com/embed/ILyf16MEvHM', '2019-03-17 13:48:57', '2019-03-17 13:48:57'),
(319, 10, 58, 1, 'User Registration Form with PHP and MySQL', 'https://www.youtube.com/embed/FgSysHTsb6A', '2019-03-17 13:49:18', '2019-03-17 13:49:18'),
(320, 10, 58, 1, 'How to connect HTML Register Form to MySQL Database with PHP', 'https://www.youtube.com/embed/qm4Eih_2p-M', '2019-03-17 13:49:42', '2019-03-17 13:49:42'),
(321, 10, 58, 1, 'HTML/PHP Contact Form Tutorial with Validation and Email Submit', 'https://www.youtube.com/embed/1CkBsGhux9U', '2019-03-17 13:49:59', '2019-03-17 13:49:59'),
(322, 10, 58, 1, 'PHP Front To Back [Part 14] - Filters & Validation', 'https://www.youtube.com/embed/pfY9LwcsH3A', '2019-03-17 13:50:22', '2019-03-17 13:50:22'),
(323, 10, 58, 1, 'how to validate form with PHP', 'https://www.youtube.com/embed/vtwNsHxHxto', '2019-03-17 13:50:41', '2019-03-17 13:50:41'),
(324, 9, 56, 1, 'Language processing system', 'https://www.youtube.com/embed/32dX-HPIyRk', '2019-03-18 05:54:01', '2019-03-18 05:54:01'),
(325, 9, 56, 1, 'Compiler vs Interpreter vs Assembler', 'https://www.youtube.com/embed/YXh0KyhRTTw&list', '2019-03-18 05:54:27', '2019-03-18 05:54:27'),
(326, 9, 57, 1, 'Various Phases of a compiler', 'https://www.youtube.com/embed/a_AgO3FSOE8&list', '2019-03-18 05:54:57', '2019-03-18 05:54:57'),
(327, 9, 57, 1, 'Elimination of Left Recursion', 'https://www.youtube.com/embed/EyghgFahrk4', '2019-03-18 05:59:14', '2019-03-18 05:59:14'),
(328, 9, 57, 1, 'Introduction to Lexical Analyzer', 'https://www.youtube.com/embed/e20DMGuLg6k', '2019-03-18 05:59:33', '2019-03-18 05:59:33'),
(329, 9, 57, 1, 'Introduction to Intermediate code generator', 'https://www.youtube.com/embed/3MX7N47P4Ok', '2019-03-18 05:59:59', '2019-03-18 05:59:59'),
(330, 9, 57, 1, 'Introduction to Syntax Analyzer', 'https://www.youtube.com/embed/9e-ksSoVvG8', '2019-03-18 06:00:18', '2019-03-18 06:00:18'),
(331, 9, 57, 1, 'Introduction to Semantic analyzer', 'https://www.youtube.com/embed/46jkDBSA4cU', '2019-03-18 06:00:36', '2019-03-18 06:00:36'),
(332, 9, 57, 1, 'Various Phases of a compiler', 'https://www.youtube.com/embed/a_AgO3FSOE8', '2019-03-18 06:00:57', '2019-03-18 06:00:57'),
(333, 9, 57, 1, 'Introduction and various phases of compiler', 'https://www.youtube.com/embed/Qkwj65l_96I', '2019-03-18 06:01:19', '2019-03-18 06:01:19'),
(334, 9, 56, 1, 'How to set up flex tools for compiler design and run not path problem', 'https://www.youtube.com/embed/UXJoIa25pFg', '2019-03-18 06:06:46', '2019-03-18 06:06:46'),
(335, 9, 56, 1, 'LEX tool full basic concept in hindi | SPCC tutorials', 'https://www.youtube.com/embed/VweEoX3PVPY', '2019-03-18 06:07:06', '2019-03-18 06:07:06'),
(336, 9, 56, 1, 'Token Separation', 'https://www.youtube.com/embed/0kaAY8-qT78', '2019-03-18 06:07:28', '2019-03-18 06:07:28'),
(337, 9, 56, 1, 'Introduction to LEX & YACC', 'https://www.youtube.com/embed/-qX1m8iD6UE', '2019-03-18 06:07:58', '2019-03-18 06:07:58'),
(338, 9, 56, 1, 'LEX and YACC', 'https://www.youtube.com/embed/Q4AXO9S2E3E', '2019-03-18 06:08:22', '2019-03-18 06:08:22'),
(339, 9, 56, 1, 'Lexical Analysis', 'https://www.youtube.com/embed/KnCrHIjP3jM', '2019-03-18 06:08:41', '2019-03-18 06:08:41'),
(340, 9, 56, 1, 'compiler lab exp 1', 'https://www.youtube.com/embed/R1EMajw8UrM', '2019-03-18 06:09:05', '2019-03-18 06:09:05'),
(341, 9, 56, 1, 'Tutorial on lex/yacc', 'https://www.youtube.com/embed/__-wUHG2rfM', '2019-03-18 06:09:31', '2019-03-18 06:09:31'),
(342, 9, 53, 1, 'Transaction Analysis Using Accounting Equation', 'https://www.youtube.com/embed/0ng8sUYGpSk', '2019-03-18 06:15:06', '2019-03-18 06:15:06'),
(343, 9, 53, 1, 'General Journal Entries Using Accounting Equation', 'https://www.youtube.com/embed/Md4WlZ-MMxE', '2019-03-18 06:15:47', '2019-03-18 06:15:47'),
(344, 9, 53, 1, 'General Ledger Accounting With Examples', 'https://www.youtube.com/embed/EZ0oBDKE3gI&index', '2019-03-18 06:16:11', '2019-03-18 06:16:11'),
(345, 9, 53, 1, 'Trial Balance Sheet Accounting With Examples', 'https://www.youtube.com/embed/leU2lyZhxLo', '2019-03-18 06:16:40', '2019-03-18 06:16:40'),
(346, 9, 53, 1, 'Worksheet-Principles of Accounting Worksheet Tutorial', 'https://www.youtube.com/embed/Cupvzuciy28', '2019-03-18 06:17:02', '2019-03-18 06:17:02'),
(347, 9, 53, 1, 'Cost-Volume-Profit (CVP) Of Principles of Accounting Tutorial', 'https://www.youtube.com/embed/omZbIrnZ1xE', '2019-03-18 06:17:24', '2019-03-18 06:17:24'),
(348, 9, 53, 1, 'Break Even Point (BEP)|Cost-Volume-Profit of Accounting Tutorial [Part-2]', 'https://www.youtube.com/embed/_Qya-hc-UOg', '2019-03-18 06:17:45', '2019-03-18 06:17:45'),
(349, 9, 53, 1, 'Break Even Point (BEP)Cost-Volume-Profit of Accounting Tutorial [Part-3]', 'https://www.youtube.com/embed/3ZLlfoLqOws', '2019-03-18 06:18:12', '2019-03-18 06:18:12'),
(350, 9, 53, 1, 'Net Income And Target Income Accounting Tutorial', 'https://www.youtube.com/embed/e4uQlQw3RZM', '2019-03-18 06:18:32', '2019-03-18 06:18:32'),
(351, 9, 55, 1, 'Simple BPMN Workflow (Business Process Modeling)', 'https://www.youtube.com/embed/WtOzW8Ck5LY', '2019-03-18 06:32:34', '2019-03-18 06:32:34'),
(352, 9, 55, 1, 'UML Class Diagram with solved example', 'https://www.youtube.com/embed/qxWhw6zAgdI', '2019-03-18 06:32:56', '2019-03-18 06:32:56'),
(353, 9, 55, 1, 'UML Class Diagram Tutorial', 'https://www.youtube.com/embed/UI6lqHOVHic', '2019-03-18 06:33:34', '2019-03-18 06:33:34');
INSERT INTO `videos` (`id`, `semister`, `subject`, `st_type`, `video_title`, `video`, `created_at`, `updated_at`) VALUES
(354, 9, 55, 1, 'Object Diagram', 'https://www.youtube.com/embed/sljwzrlJrjw', '2019-03-18 06:33:57', '2019-03-18 06:33:57'),
(355, 9, 55, 1, 'Software Development Life Cycle (SDLC)', 'https://www.youtube.com/embed/G-6qDY8UltU', '2019-03-18 06:34:20', '2019-03-18 06:34:20'),
(356, 9, 55, 1, '5 Steps to Draw a Sequence Diagram', 'https://www.youtube.com/embed/18_kVlQMavE', '2019-03-18 06:34:46', '2019-03-18 06:34:46'),
(357, 9, 55, 1, 'UML - How to draw an object diagram', 'https://www.youtube.com/embed/Mwjg8s2HtAg', '2019-03-18 06:35:13', '2019-03-18 06:35:13'),
(358, 1, 75, 2, 'Discrete Mathematics: Foundation for Computer Science', 'https://www.youtube.com/embed/pKjrK-yEYFI', '2019-03-19 07:53:08', '2019-03-19 07:53:08'),
(359, 1, 75, 2, 'Discrete Mathematics - Propositional Logic & Logical Operator', 'https://www.youtube.com/embed/bn7dQ4zOSIU', '2019-03-19 07:58:00', '2019-03-19 07:58:00'),
(360, 1, 75, 2, 'Discrete Mathematics - More Logical Operators', 'https://www.youtube.com/embed/a3qDoz1FMMg', '2019-03-19 07:58:35', '2019-03-19 07:58:35'),
(361, 1, 75, 2, 'Discrete Mathematics - Logical Equivalence', 'https://www.youtube.com/embed/F3qlbABFPks', '2019-03-19 07:59:07', '2019-03-19 07:59:07'),
(362, 1, 75, 2, 'Discrete Mathematics - Propositional Function and Quantifier', 'https://www.youtube.com/embed/1iwZ_JjEXPM', '2019-03-19 07:59:38', '2019-03-19 07:59:38'),
(363, 1, 75, 2, '[Discrete Mathematics - Negation of a Quantifier', 'https://www.youtube.com/embed/7dXVRvK8K7', '2019-03-19 08:00:08', '2019-03-19 08:00:08'),
(364, 1, 75, 2, 'Discrete Mathematics - Multi Variable Propositional Function]', 'https://www.youtube.com/embed/IDx9Ra-3Po4', '2019-03-19 08:00:40', '2019-03-19 08:00:40'),
(365, 1, 75, 2, 'Discrete Mathematics - Negation of Multi Variable Quantifier', 'https://www.youtube.com/embed/OMghdxVRc94', '2019-03-19 08:01:15', '2019-03-19 08:01:15'),
(366, 1, 75, 1, 'Discrete Mathematics - Rules of Inference', 'https://www.youtube.com/embed/ev5HwLjZ6FU', '2019-03-19 08:01:48', '2019-03-19 08:01:48'),
(367, 1, 75, 2, 'Discrete Mathematics - Proof Technique', 'https://www.youtube.com/embed/zqZ3eX0MOqs', '2019-03-19 08:02:18', '2019-03-19 08:02:18'),
(368, 1, 75, 2, 'Discrete Mathematics - Set Theory', 'https://www.youtube.com/embed/loYMGfhWIC4', '2019-03-19 08:02:54', '2019-03-19 08:02:54'),
(369, 1, 75, 2, 'Discrete Mathematics - Power Set', 'https://www.youtube.com/embed/83tW9Dgjtzg', '2019-03-19 08:03:29', '2019-03-19 08:03:29'),
(370, 2, 81, 2, 'Transaction Analysis Using Accounting Equation', 'https://www.youtube.com/embed/0ng8sUYGpSk', '2019-03-19 08:06:40', '2019-03-19 08:06:40'),
(371, 2, 81, 2, 'General Journal Entries Using Accounting Equation', 'https://www.youtube.com/embed/Md4WlZ-MMxE', '2019-03-19 08:07:13', '2019-03-19 08:07:13'),
(372, 2, 81, 2, 'General Ledger Accounting With Examples', 'https://www.youtube.com/embed/leU2lyZhxLo', '2019-03-19 08:07:40', '2019-03-19 08:07:40'),
(373, 2, 81, 2, 'Worksheet-Principles of Accounting Worksheet Tutorial', 'https://www.youtube.com/embed/Cupvzuciy28', '2019-03-19 08:08:06', '2019-03-19 08:08:06'),
(374, 2, 81, 2, 'Cost-Volume-Profit (CVP) Of Principles of Accounting Tutorial', 'https://www.youtube.com/embed/omZbIrnZ1xE', '2019-03-19 08:08:30', '2019-03-19 08:08:30'),
(375, 2, 81, 2, 'Break Even Point (BEP)|Cost-Volume-Profit of Accounting Tutorial [Part-2]', 'https://www.youtube.com/embed/_Qya-hc-UOg', '2019-03-19 08:09:14', '2019-03-19 08:09:14'),
(376, 2, 81, 2, 'Break Even Point (BEP)Cost-Volume-Profit of Accounting Tutorial [Part-3]', 'https://www.youtube.com/embed/3ZLlfoLqOws', '2019-03-19 08:09:54', '2019-03-19 08:09:54'),
(377, 2, 81, 2, 'Net Income And Target Income Accounting Tutorial', 'https://www.youtube.com/embed/e4uQlQw3RZM', '2019-03-19 08:10:34', '2019-03-19 08:10:34'),
(378, 2, 79, 2, 'Adjacency Matrix', 'https://www.youtube.com/embed/9C2cpQZVRBA', '2019-03-19 08:11:44', '2019-03-19 08:11:44'),
(379, 2, 79, 2, 'Adjacency List', 'https://www.youtube.com/embed/k1wraWzqtvQ', '2019-03-19 08:12:09', '2019-03-19 08:12:09'),
(380, 2, 79, 2, 'Breadth First Search | BFS', 'https://www.youtube.com/embed/GVSxGBCtQCE', '2019-03-19 08:12:33', '2019-03-19 08:12:33'),
(381, 2, 79, 2, 'Depth First Search | DFS (Part - 1)', 'https://www.youtube.com/embed/Lax2okU8yM8', '2019-03-19 08:12:56', '2019-03-19 08:12:56'),
(382, 2, 79, 2, 'Topological Sorting', 'https://www.youtube.com/embed/Q9PIxaNGnig', '2019-03-19 08:13:19', '2019-03-19 08:13:19'),
(383, 2, 79, 2, 'Topological Sort Graph Algorithm', 'https://www.youtube.com/embed/ddTC4Zovtbc', '2019-03-19 08:13:43', '2019-03-19 08:13:43'),
(384, 2, 79, 2, 'Prim\'s algorithm for Minimum Spanning Tree]', 'https://www.youtube.com/embed/xENj6Ns3CfU', '2019-03-19 08:14:10', '2019-03-19 08:14:10'),
(385, 2, 79, 2, 'Kruskal algorithm for Minimum Spanning Tree', 'https://www.youtube.com/embed/ttbHBbNRRYE', '2019-03-19 08:14:37', '2019-03-19 08:14:37'),
(386, 2, 79, 2, 'Prims and Kruskals Algorithms - Greedy Method', 'https://www.youtube.com/embed/4ZlRH0eK-qQ', '2019-03-19 08:14:57', '2019-03-19 08:14:57'),
(387, 2, 79, 2, 'Dijkstra\'s Shortest Path Algorithm', 'https://www.youtube.com/embed/qx9sJ3O3JM0', '2019-03-19 08:15:25', '2019-03-19 08:15:25'),
(388, 2, 79, 2, 'Fractional Knapsack Problem', 'https://www.youtube.com/embed/m1p-eWxrt6g', '2019-03-19 08:15:48', '2019-03-19 08:15:48'),
(389, 3, 86, 2, 'Installing the JDK', 'https://www.youtube.com/embed/Hl-zzrqQoSE', '2019-03-19 08:17:01', '2019-03-19 08:17:01'),
(390, 3, 86, 2, 'Running a Java Program', 'https://www.youtube.com/embed/Hl-zzrqQoSE', '2019-03-19 08:17:37', '2019-03-19 08:17:37'),
(391, 3, 86, 2, 'Downloading Eclipse', 'https://www.youtube.com/embed/CE8UIbb_4iM', '2019-03-19 08:18:09', '2019-03-19 08:18:09'),
(392, 3, 86, 2, 'Getting User Input', 'https://www.youtube.com/embed/5DdacOkrTgo', '2019-03-19 08:18:44', '2019-03-19 08:18:44'),
(393, 3, 86, 2, 'Building a Basic Calculator', 'https://www.youtube.com/embed/ANuuSFY2BbY', '2019-03-19 08:19:17', '2019-03-19 08:19:17'),
(394, 3, 86, 2, 'Math Operators', 'https://www.youtube.com/embed/8ZaTSedtf9M', '2019-03-19 08:19:52', '2019-03-19 08:19:52'),
(395, 3, 86, 2, 'Increment Operators', 'https://www.youtube.com/embed/ydcTx6idTs0', '2019-03-19 08:20:19', '2019-03-19 08:20:19'),
(396, 3, 86, 2, 'If Statement', 'https://www.youtube.com/embed/iMeaovDbgkQ', '2019-03-19 08:20:49', '2019-03-19 08:20:49'),
(397, 3, 86, 2, 'Switch Statement', 'https://www.youtube.com/embed/RVRPmeccFT0', '2019-03-19 08:21:26', '2019-03-19 08:21:26'),
(398, 3, 86, 2, 'While Loop', 'https://www.youtube.com/embed/8ZuWD2CBjgs', '2019-03-19 08:21:55', '2019-03-19 08:21:55'),
(399, 3, 85, 2, 'UML Class Diagram Tutorial', 'https://www.youtube.com/embed/UI6lqHOVHic', '2019-03-19 08:22:34', '2019-03-19 08:22:34'),
(400, 3, 85, 2, 'UML Use Case Diagram Tutorial', 'https://www.youtube.com/embed/zid-MVo7M-E', '2019-03-19 08:22:58', '2019-03-19 08:22:58'),
(401, 3, 85, 2, 'Object Diagram', 'https://www.youtube.com/embed/sljwzrlJrjw', '2019-03-19 08:23:27', '2019-03-19 08:23:27'),
(402, 6, 101, 2, 'Language processing system', 'https://www.youtube.com/embed/32dX-HPIyRk', '2019-03-19 08:24:50', '2019-03-19 08:24:50'),
(403, 6, 101, 2, 'Elimination of Left Recursion', 'https://www.youtube.com/embed/EyghgFahrk4', '2019-03-19 08:25:32', '2019-03-19 08:25:32'),
(404, 6, 101, 2, 'Introduction to Lexical Analyzer', 'https://www.youtube.com/embed/e20DMGuLg6k', '2019-03-19 08:26:12', '2019-03-19 08:26:12'),
(405, 6, 101, 2, 'Introduction to Intermediate code generator', 'https://www.youtube.com/embed/3MX7N47P4Ok', '2019-03-19 08:26:36', '2019-03-19 08:26:36'),
(406, 6, 101, 2, 'Introduction to Syntax Analyzer', 'https://www.youtube.com/embed/9e-ksSoVvG8', '2019-03-19 08:26:59', '2019-03-19 08:26:59'),
(407, 6, 101, 2, 'Introduction to Semantic analyzer', 'https://www.youtube.com/embed/46jkDBSA4cU', '2019-03-19 08:27:28', '2019-03-19 08:27:28'),
(408, 6, 101, 2, 'Various Phases of a compiler', 'https://www.youtube.com/embed/a_AgO3FSOE8', '2019-03-19 08:27:52', '2019-03-19 08:27:52'),
(409, 6, 102, 2, 'How to set up flex tools for compiler design and run not path problem', 'https://www.youtube.com/embed/UXJoIa25pFg', '2019-03-19 08:28:29', '2019-03-19 08:28:29'),
(410, 6, 102, 2, 'LEX tool full basic concept', 'https://www.youtube.com/embed/VweEoX3PVPY', '2019-03-19 08:28:52', '2019-03-19 08:28:52'),
(411, 6, 102, 2, 'Token Separation', 'https://www.youtube.com/embed/0kaAY8-qT78', '2019-03-19 08:29:16', '2019-03-19 08:29:16'),
(412, 6, 102, 2, 'Introduction to LEX & YACC', 'https://www.youtube.com/embed/-qX1m8iD6UE', '2019-03-19 08:29:36', '2019-03-19 08:29:36'),
(413, 6, 102, 2, 'Lexical Analysis', 'https://www.youtube.com/embed/KnCrHIjP3jM', '2019-03-19 08:30:01', '2019-03-19 08:30:01'),
(414, 6, 102, 2, 'compiler lab exp', 'https://www.youtube.com/embed/R1EMajw8UrM', '2019-03-19 08:30:24', '2019-03-19 08:30:24'),
(415, 6, 103, 2, 'Simulation of Dump Truck Problem -Part I', 'https://www.youtube.com/embed/W-vhldzeJdE', '2019-03-19 08:31:08', '2019-03-19 08:31:08'),
(416, 6, 103, 2, 'Simulation of Dump Truck Problem-Part II', 'https://www.youtube.com/embed/LAoh0ejmoSY', '2019-03-19 08:31:32', '2019-03-19 08:31:32'),
(417, 6, 103, 2, 'Telephony System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:31:57', '2019-03-19 08:31:57'),
(418, 6, 103, 2, 'Simulation of Three Bearing Problem', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:32:24', '2019-03-19 08:32:24'),
(419, 6, 103, 2, 'Simulation of (M,N) Inventory System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:32:48', '2019-03-19 08:32:48'),
(420, 6, 103, 2, 'Simulation of Inventory System', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:33:16', '2019-03-19 08:33:16'),
(421, 6, 103, 2, 'Single Queue Double Server || Simulation of Able and Baker', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:33:38', '2019-03-19 08:33:38'),
(422, 6, 103, 2, 'Single Queue Single Server || Simulation of Single Queue Single Server', 'https://www.youtube.com/embed/dfgu8O_IP-I', '2019-03-19 08:34:03', '2019-03-19 08:34:03'),
(423, 7, 107, 2, 'Gantt Charts', 'https://www.youtube.com/embed/LCAdC6x_ChU', '2019-03-19 08:34:53', '2019-03-19 08:34:53'),
(424, 7, 107, 2, 'Critical Path', 'https://www.youtube.com/embed/Es6SAlzbJvU', '2019-03-19 08:35:17', '2019-03-19 08:35:17'),
(425, 7, 107, 2, 'Slack Time Float time', 'https://www.youtube.com/embed/YqqwXkZDm4E', '2019-03-19 08:35:42', '2019-03-19 08:35:42'),
(426, 7, 107, 2, 'Network Activity Part 1', 'https://www.youtube.com/embed/_aDgHpoeuRo', '2019-03-19 08:36:05', '2019-03-19 08:36:05'),
(427, 7, 107, 2, 'Network Activity Part 2', 'https://www.youtube.com/embed/1QOWi99IucI', '2019-03-19 08:36:28', '2019-03-19 08:36:28'),
(428, 7, 107, 2, 'Structured English', 'https://www.youtube.com/embed/UrTr1vQq6lY', '2019-03-19 08:36:48', '2019-03-19 08:36:48'),
(429, 7, 107, 2, 'DFD System', 'https://www.youtube.com/embed/0xBXK4zV2YM', '2019-03-19 08:37:11', '2019-03-19 08:37:11'),
(430, 7, 107, 2, 'Decision tree 1', 'https://www.youtube.com/embed/S6rsjDfVGjo', '2019-03-19 08:37:35', '2019-03-19 08:37:35'),
(431, 7, 109, 2, 'Line Drawing Algorithm', 'https://www.youtube.com/embed/rjrGUPBON50', '2019-03-19 08:38:15', '2019-03-19 08:38:15'),
(432, 7, 109, 2, 'DDA Algorithm', 'https://www.youtube.com/embed/LG3juPvgQXc', '2019-03-19 08:38:40', '2019-03-19 08:38:40'),
(433, 7, 109, 2, 'Bresenham Line Drawing Algorithm', 'https://www.youtube.com/embed/hSiRFkMLuE0', '2019-03-19 08:39:09', '2019-03-19 08:39:09'),
(434, 7, 109, 2, 'Midpoint Circle Algorithm', 'https://www.youtube.com/embed/W3k9EzEeOcc', '2019-03-19 08:39:34', '2019-03-19 08:39:34'),
(435, 7, 109, 2, 'Midpoint Circle Algorithm Example 1', 'https://www.youtube.com/embed/VJ9ArxiIeJQ', '2019-03-19 08:40:05', '2019-03-19 08:40:05'),
(436, 7, 109, 2, 'Cohen Sutherland Line Clipping', 'https://www.youtube.com/embed/j1ine7FfCBo', '2019-03-19 08:40:29', '2019-03-19 08:40:29'),
(437, 7, 109, 2, 'Cohen Sutherland Line Clipping Problem 1', 'https://www.youtube.com/embed/JUaFXf4IBrI', '2019-03-19 08:40:56', '2019-03-19 08:40:56'),
(438, 7, 109, 2, 'Sutherland Hodgman Polygon Clipping Algorithm', 'https://www.youtube.com/embed/HUq0XIvOwsc', '2019-03-19 08:41:27', '2019-03-19 08:41:27'),
(439, 7, 109, 2, 'Weiler Atherton Polygon Clipping Algorithm', 'https://www.youtube.com/embed/CBo96CX6r5E', '2019-03-19 08:41:54', '2019-03-19 08:41:54'),
(440, 8, 116, 2, 'Simple BPMN Workflow (Business Process Modeling)', 'https://www.youtube.com/embed/WtOzW8Ck5LY', '2019-03-19 08:42:37', '2019-03-19 08:42:37'),
(441, 8, 116, 2, 'UML Class Diagram with solved example', 'https://www.youtube.com/embed/qxWhw6zAgdI', '2019-03-19 08:43:00', '2019-03-19 08:43:00'),
(442, 8, 116, 2, 'UML Class Diagram Tutorial', 'https://www.youtube.com/embed/UI6lqHOVHic', '2019-03-19 08:43:24', '2019-03-19 08:43:24'),
(443, 8, 116, 2, 'Object Diagram', 'https://www.youtube.com/embed/sljwzrlJrjw', '2019-03-19 08:43:53', '2019-03-19 08:43:53'),
(444, 8, 116, 2, 'Software Development Life Cycle (SDLC)', 'https://www.youtube.com/embed/G-6qDY8UltU', '2019-03-19 08:44:15', '2019-03-19 08:44:15'),
(445, 8, 116, 2, '5 Steps to Draw a Sequence Diagram', 'https://www.youtube.com/embed/18_kVlQMavE', '2019-03-19 08:44:35', '2019-03-19 08:44:35'),
(446, 8, 116, 2, 'UML - How to draw an object diagram', 'https://www.youtube.com/embed/Mwjg8s2HtAg', '2019-03-19 08:44:57', '2019-03-19 08:44:57'),
(447, 8, 113, 2, 'Breadth First Search', 'https://www.youtube.com/embed/QuwhTIy7WqQ', '2019-03-19 08:45:31', '2019-03-19 08:45:31'),
(448, 8, 113, 2, 'Depth First Search', 'https://www.youtube.com/embed/OALQkbggDbw', '2019-03-19 08:45:54', '2019-03-19 08:45:54'),
(449, 8, 113, 2, 'Best First Search', 'https://www.youtube.com/embed/cnPm-wz61Zo', '2019-03-19 08:46:16', '2019-03-19 08:46:16'),
(450, 8, 113, 2, 'Bi-directional Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:46:39', '2019-03-19 08:46:39'),
(451, 8, 113, 2, 'Uniform Cost Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:46:59', '2019-03-19 08:46:59'),
(452, 8, 113, 2, 'Heuristic Search & Functions', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:47:20', '2019-03-19 08:47:20'),
(453, 8, 113, 2, 'Iterative Deepening Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:47:57', '2019-03-19 08:47:57'),
(454, 8, 113, 2, 'A* Search in Artificial Intelligence', 'https://www.youtube.com/embed/AEhsosIqWe8', '2019-03-19 08:48:21', '2019-03-19 08:48:21'),
(455, 8, 113, 2, 'Greedy Search Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:48:49', '2019-03-19 08:48:49'),
(456, 8, 113, 2, 'MIN Max Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:49:13', '2019-03-19 08:49:13'),
(457, 8, 113, 2, 'Alpha–beta pruning', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:49:42', '2019-03-19 08:49:42'),
(458, 8, 113, 2, 'Hill Climbing Search', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:50:06', '2019-03-19 08:50:06'),
(459, 8, 113, 2, '8 Puzzle Algorithm', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:50:33', '2019-03-19 08:50:33'),
(460, 8, 113, 2, 'Genetic Algorithms | 8 Queen Problem', 'https://www.youtube.com/embed/avBg1BQ05oU', '2019-03-19 08:51:00', '2019-03-19 08:51:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `semisters`
--
ALTER TABLE `semisters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_types`
--
ALTER TABLE `student_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `usrer_types`
--
ALTER TABLE `usrer_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `semisters`
--
ALTER TABLE `semisters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_types`
--
ALTER TABLE `student_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `usrer_types`
--
ALTER TABLE `usrer_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`category`) REFERENCES `usrer_types` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
