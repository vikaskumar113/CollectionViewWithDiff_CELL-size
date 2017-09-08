# CollectionViewWithDiff_CELL-size
![simulator screen shot 07-sep-2017 4 17 07 pm](https://user-images.githubusercontent.com/16588047/30159809-942b9834-93e7-11e7-9bcc-ca92ec097b94.png)




    - (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
      return 8;
     }

     - (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
      return 1 ;
     }

     - (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
      CHTCollectionViewWaterfallCell *cell =
      (CHTCollectionViewWaterfallCell *)[collectionView dequeueReusableCellWithReuseIdentifier:CELL_IDENTIFIER
                                                                              forIndexPath:indexPath];
      cell.imageView.image = [UIImage imageNamed:self.cats[indexPath.item % 4]];
      return cell;
      }

      - (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
       UICollectionReusableView *reusableView = nil;

      if ([kind isEqualToString:CHTCollectionElementKindSectionHeader]) {
      reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                      withReuseIdentifier:HEADER_IDENTIFIER
                                                             forIndexPath:indexPath];
      } else if ([kind isEqualToString:CHTCollectionElementKindSectionFooter]) {
     reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                      withReuseIdentifier:FOOTER_IDENTIFIER
                                                             forIndexPath:indexPath];
    }

      return reusableView;
    }

    #pragma mark - CHTCollectionViewDelegateWaterfallLayout
      - (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
      return [self.cellSizes[indexPath.item % 4] CGSizeValue];
      }
    - (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
      {
    CHTCollectionViewWaterfallCell *cell = [collectionView cellForItemAtIndexPath   :indexPath];

    IMGVC*vc=[self.storyboard instantiateViewControllerWithIdentifier:@"IMGVC"];
    vc.img=cell.imageView.image;
    [self.navigationController pushViewController:vc animated:YES];
    }
